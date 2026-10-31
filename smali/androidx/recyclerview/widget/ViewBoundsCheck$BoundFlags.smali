.class Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;
.super Ljava/lang/Object;
.source "ViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ViewBoundsCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BoundFlags"
.end annotation


# instance fields
.field mBoundFlags:I

.field mChildEnd:I

.field mChildStart:I

.field mRvEnd:I

.field mRvStart:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    return-void
.end method


# virtual methods
.method addFlags(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 148
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 149
    return-void
.end method

.method boundsMatch()Z
    .registers 5

    .line 166
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 167
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    iget v2, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    iget v3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v2

    shl-int/2addr v2, v1

    and-int/2addr v0, v2

    if-nez v0, :cond_16

    .line 168
    return v1

    .line 172
    :cond_16
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit8 v0, v0, 0x70

    if-eqz v0, :cond_2c

    .line 173
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    iget v2, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    iget v3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    and-int/2addr v0, v2

    if-nez v0, :cond_2c

    .line 174
    return v1

    .line 178
    :cond_2c
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit16 v0, v0, 0x700

    if-eqz v0, :cond_42

    .line 179
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    iget v2, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    iget v3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v0, v2

    if-nez v0, :cond_42

    .line 180
    return v1

    .line 184
    :cond_42
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit16 v0, v0, 0x7000

    if-eqz v0, :cond_58

    .line 185
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    iget v2, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    iget v3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    and-int/2addr v0, v2

    if-nez v0, :cond_58

    .line 186
    return v1

    .line 189
    :cond_58
    const/4 v0, 0x1

    return v0
.end method

.method compare(II)I
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 156
    if-le p1, p2, :cond_4

    .line 157
    const/4 v0, 0x1

    return v0

    .line 159
    :cond_4
    if-ne p1, p2, :cond_8

    .line 160
    const/4 v0, 0x2

    return v0

    .line 162
    :cond_8
    const/4 v0, 0x4

    return v0
.end method

.method resetFlags()V
    .registers 2

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    .line 153
    return-void
.end method

.method setBounds(IIII)V
    .registers 5
    .param p1, "rvStart"    # I
    .param p2, "rvEnd"    # I
    .param p3, "childStart"    # I
    .param p4, "childEnd"    # I

    .line 141
    iput p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    .line 142
    iput p2, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    .line 143
    iput p3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    .line 144
    iput p4, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    .line 145
    return-void
.end method
