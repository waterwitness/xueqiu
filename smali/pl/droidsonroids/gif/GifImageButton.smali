.class public Lpl/droidsonroids/gif/GifImageButton;
.super Landroid/widget/ImageButton;
.source "GifImageButton.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    invoke-static {p0, p2, p3}, Lpl/droidsonroids/gif/g;->a(Landroid/widget/ImageView;Landroid/util/AttributeSet;I)Lpl/droidsonroids/gif/h;

    move-result-object v0

    .line 1075
    iget-boolean v1, v0, Lpl/droidsonroids/gif/h;->c:Z

    iput-boolean v1, p0, Lpl/droidsonroids/gif/GifImageButton;->a:Z

    .line 1076
    iget v1, v0, Lpl/droidsonroids/gif/h;->a:I

    if-lez v1, :cond_0

    .line 1077
    iget v1, v0, Lpl/droidsonroids/gif/h;->a:I

    invoke-super {p0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1079
    :cond_0
    iget v1, v0, Lpl/droidsonroids/gif/h;->b:I

    if-lez v1, :cond_1

    .line 1080
    iget v0, v0, Lpl/droidsonroids/gif/h;->b:I

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 56
    :cond_1
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 122
    check-cast p1, Lpl/droidsonroids/gif/f;

    .line 123
    invoke-virtual {p1}, Lpl/droidsonroids/gif/f;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 124
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lpl/droidsonroids/gif/f;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 125
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lpl/droidsonroids/gif/f;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 126
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-boolean v0, p0, Lpl/droidsonroids/gif/GifImageButton;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 116
    :goto_0
    iget-boolean v2, p0, Lpl/droidsonroids/gif/GifImageButton;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 117
    :cond_0
    new-instance v2, Lpl/droidsonroids/gif/f;

    invoke-super {p0}, Landroid/widget/ImageButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-direct {v2, v3, v4}, Lpl/droidsonroids/gif/f;-><init>(Landroid/os/Parcelable;[Landroid/graphics/drawable/Drawable;)V

    return-object v2

    :cond_1
    move-object v0, v1

    .line 115
    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lpl/droidsonroids/gif/g;->a(Landroid/widget/ImageView;ZI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 111
    :cond_0
    return-void
.end method

.method public setFreezesAnimation(Z)V
    .locals 0

    .prologue
    .line 135
    iput-boolean p1, p0, Lpl/droidsonroids/gif/GifImageButton;->a:Z

    .line 136
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lpl/droidsonroids/gif/g;->a(Landroid/widget/ImageView;ZI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 104
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 94
    invoke-static {p0, p1}, Lpl/droidsonroids/gif/g;->a(Landroid/widget/ImageView;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageURI(Landroid/net/Uri;)V

    .line 97
    :cond_0
    return-void
.end method
