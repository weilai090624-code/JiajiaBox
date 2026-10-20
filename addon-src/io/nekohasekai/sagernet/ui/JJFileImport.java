/*
 * Copyright (c) 2026 weilai090624-code
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 */

package io.nekohasekai.sagernet.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;

/** Bridges the restored file picker to JJHomeFragment without duplicating profile parsing. */
public final class JJFileImport {
    public static final int REQUEST_CODE = 0x4A46;

    private static final int ID_CANCEL = 0x7f0a017d;
    private static final int ID_IMPORT_FILE = 0x7f0a0058;
    private static final int ID_OK = 0x7f0a0180;
    private static final int STRING_IMPORT_FILE = 0x7f13002f;
    private static final int STRING_FILE_MANAGER_MISSING = 0x7f1300f7;
    private static final int MAX_TEXT_CHARS = 16 * 1024 * 1024;

    private JJFileImport() {
    }

    public static void install(final Object fragment, View dialogView, final Dialog dialog) {
        TextView cancel = dialogView.findViewById(ID_CANCEL);
        if (cancel == null || !(cancel.getParent() instanceof ViewGroup)) return;

        final Context context = cancel.getContext();
        TextView importButton = new TextView(context);
        importButton.setId(ID_IMPORT_FILE);
        importButton.setText(STRING_IMPORT_FILE);
        importButton.setTextSize(0, cancel.getTextSize());
        importButton.setTypeface(cancel.getTypeface());
        ColorStateList colors = cancel.getTextColors();
        importButton.setTextColor(colors);
        importButton.setGravity(cancel.getGravity());
        importButton.setIncludeFontPadding(cancel.getIncludeFontPadding());
        importButton.setPadding(
                cancel.getPaddingLeft(), cancel.getPaddingTop(),
                cancel.getPaddingRight(), cancel.getPaddingBottom());
        importButton.setEnabled(cancel.isEnabled());
        importButton.setAlpha(cancel.getAlpha());
        importButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View ignored) {
                dialog.dismiss();
                Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT)
                        .addCategory(Intent.CATEGORY_OPENABLE)
                        .setType("*/*");
                try {
                    Method start = fragment.getClass().getMethod(
                            "startActivityForResult", Intent.class, int.class);
                    start.invoke(fragment, intent, REQUEST_CODE);
                } catch (Throwable error) {
                    Toast.makeText(context, STRING_FILE_MANAGER_MISSING, Toast.LENGTH_LONG).show();
                }
            }
        });

        ViewGroup row = (ViewGroup) cancel.getParent();
        int index = row.indexOfChild(cancel);
        row.addView(importButton, index,
                new LinearLayout.LayoutParams(
                        ViewGroup.LayoutParams.WRAP_CONTENT,
                        ViewGroup.LayoutParams.WRAP_CONTENT));
    }

    /** Keeps all three footer actions borderless and gives adjacent actions the same gap. */
    public static void polish(View dialogView) {
        TextView importButton = dialogView.findViewById(ID_IMPORT_FILE);
        TextView cancel = dialogView.findViewById(ID_CANCEL);
        TextView ok = dialogView.findViewById(ID_OK);
        if (importButton == null || cancel == null || ok == null) return;
        if (importButton.getParent() != cancel.getParent() || cancel.getParent() != ok.getParent()) return;

        TextView[] actions = {importButton, cancel, ok};
        Context context = dialogView.getContext();
        int height = UiComponents.dp(context, UiComponents.ACTION_HEIGHT);
        int gap = UiComponents.dp(context, UiComponents.GAP);
        for (int index = 0; index < actions.length; index++) {
            TextView action = actions[index];
            UiComponents.plainAction(action);
            LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, height);
            if (index > 0) params.setMarginStart(gap);
            action.setLayoutParams(params);
        }
    }

    public static void handleResult(final Object fragment, Intent data) {
        if (data == null) return;
        final Uri uri = data.getData();
        if (uri == null) return;

        final Context context;
        final Activity activity;
        try {
            Method requireContext = fragment.getClass().getMethod("requireContext");
            Method requireActivity = fragment.getClass().getMethod("requireActivity");
            context = (Context) requireContext.invoke(fragment);
            activity = (Activity) requireActivity.invoke(fragment);
        } catch (Throwable error) {
            return;
        }

        Thread reader = new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    final String text = readUtf8(context, uri);
                    activity.runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            invokeExistingImporter(fragment, text, context);
                        }
                    });
                } catch (final Throwable error) {
                    activity.runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            String message = rootMessage(error);
                            Toast.makeText(context, message, Toast.LENGTH_LONG).show();
                        }
                    });
                }
            }
        }, "jj-file-import");
        reader.setDaemon(true);
        reader.start();
    }

    private static String readUtf8(Context context, Uri uri) throws IOException {
        StringBuilder text = new StringBuilder();
        char[] buffer = new char[8192];
        try (InputStream stream = context.getContentResolver().openInputStream(uri)) {
            if (stream == null) throw new IOException("Unable to open selected file");
            try (BufferedReader reader = new BufferedReader(
                    new InputStreamReader(stream, StandardCharsets.UTF_8))) {
                int count;
                while ((count = reader.read(buffer)) != -1) {
                    if (text.length() + count > MAX_TEXT_CHARS) {
                        throw new IOException("Selected file is too large");
                    }
                    text.append(buffer, 0, count);
                }
            }
        }
        return text.toString();
    }

    private static void invokeExistingImporter(Object fragment, String text, Context context) {
        try {
            Method importer = fragment.getClass().getDeclaredMethod("importNodes", String.class);
            importer.setAccessible(true);
            importer.invoke(fragment, text);
        } catch (Throwable error) {
            Toast.makeText(context, rootMessage(error), Toast.LENGTH_LONG).show();
        }
    }

    private static String rootMessage(Throwable error) {
        Throwable current = error;
        while (current instanceof InvocationTargetException
                && ((InvocationTargetException) current).getTargetException() != null) {
            current = ((InvocationTargetException) current).getTargetException();
        }
        String message = current.getLocalizedMessage();
        return message == null || message.trim().isEmpty()
                ? current.getClass().getSimpleName() : message;
    }
}

