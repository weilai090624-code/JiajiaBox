package io.nekohasekai.sagernet.ui;

import android.app.Activity;
import android.view.View;
import android.widget.TextView;

/** 抽屉里的「节点排序」行：点一下在订阅顺序与延迟排序之间切换。 */
public final class SortRowClick implements View.OnClickListener {
    private final Activity activity;
    private final TextView label;

    public SortRowClick(Activity activity, TextView label) {
        this.activity = activity;
        this.label = label;
    }

    @Override
    public void onClick(View view) {
        android.util.Log.e("JJSort", "clicked");
        boolean applied = NodeSortHelper.toggleFromActivity(activity);
        android.util.Log.e("JJSort", "applied=" + applied + " label=" + NodeSortHelper.label());
        if (label != null) label.setText(applied ? "节点排序 · " + NodeSortHelper.label() : "节点排序 · 列表未就绪");
    }
}
