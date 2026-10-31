.class public Landroidx/appcompat/widget/AppCompatToggleButton;
.super Landroid/widget/ToggleButton;
.source "AppCompatToggleButton.java"

# interfaces
.implements Landroidx/core/view/TintableBackgroundView;
.implements Landroidx/appcompat/widget/EmojiCompatConfigurationView;
.implements Landroidx/core/widget/TintableCompoundDrawablesView;


# instance fields
.field private mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

.field private final mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 69
    const v0, 0x101004b

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatToggleButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Landroid/view/View;Landroid/content/Context;)V

    .line 78
    new-instance v0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 79
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 81
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatTextHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    .line 82
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 84
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatToggleButton;->getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    move-result-object v0

    .line 85
    .local v0, "emojiTextViewHelper":Landroidx/appcompat/widget/AppCompatEmojiTextHelper;
    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method private getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;
    .registers 2

    .line 183
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    if-nez v0, :cond_b

    .line 184
    new-instance v0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    .line 186
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mAppCompatEmojiTextHelper:Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    return-object v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    .line 162
    invoke-super {p0}, Landroid/widget/ToggleButton;->drawableStateChanged()V

    .line 163
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_c

    .line 164
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 166
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_15

    .line 167
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 169
    :cond_15
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 128
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_b

    .line 129
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 128
    :goto_c
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 156
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_b

    .line 157
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 156
    :goto_c
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 238
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->getCompoundDrawableTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 281
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public isEmojiCompatEnabled()Z
    .registers 2

    .line 202
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatToggleButton;->getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setAllCaps(Z)V
    .registers 3
    .param p1, "allCaps"    # Z

    .line 191
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setAllCaps(Z)V

    .line 192
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatToggleButton;->getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->setAllCaps(Z)V

    .line 193
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_c

    .line 100
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_c
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 90
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    .line 91
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_c

    .line 92
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 94
    :cond_c
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 208
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ToggleButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_c

    .line 210
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->onSetCompoundDrawables()V

    .line 212
    :cond_c
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .line 218
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ToggleButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_c

    .line 220
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->onSetCompoundDrawables()V

    .line 222
    :cond_c
    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 197
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatToggleButton;->getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->setEnabled(Z)V

    .line 198
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .registers 3
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .line 173
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatToggleButton;->getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ToggleButton;->setFilters([Landroid/text/InputFilter;)V

    .line 174
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 113
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_9

    .line 114
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 116
    :cond_9
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 141
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_9

    .line 142
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 144
    :cond_9
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .line 261
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 262
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 263
    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 301
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 302
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 303
    return-void
.end method
