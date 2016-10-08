.class public Lcom/kwlopen/sdk/camera/FocusImageView;
.super Landroid/widget/ImageView;
.source "FocusImageView.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Landroid/view/animation/Animation;

.field e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 24
    iput v0, p0, Lcom/kwlopen/sdk/camera/FocusImageView;->a:I

    .line 25
    iput v0, p0, Lcom/kwlopen/sdk/camera/FocusImageView;->b:I

    .line 26
    iput v0, p0, Lcom/kwlopen/sdk/camera/FocusImageView;->c:I

    .line 32
    invoke-virtual {p0}, Lcom/kwlopen/sdk/camera/FocusImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "kwlopen_focusview_show"

    .line 33
    invoke-static {p1, v1}, Lcom/b/a/a/f;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 32
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/camera/FocusImageView;->d:Landroid/view/animation/Animation;

    .line 34
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/camera/FocusImageView;->setVisibility(I)V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kwlopen/sdk/camera/FocusImageView;->e:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput v2, p0, Lcom/kwlopen/sdk/camera/FocusImageView;->a:I

    .line 25
    iput v2, p0, Lcom/kwlopen/sdk/camera/FocusImageView;->b:I

    .line 26
    iput v2, p0, Lcom/kwlopen/sdk/camera/FocusImageView;->c:I

    .line 41
    invoke-virtual {p0}, Lcom/kwlopen/sdk/camera/FocusImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "kwlopen_focusview_show"

    .line 42
    invoke-static {p1, v1}, Lcom/b/a/a/f;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 41
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/camera/FocusImageView;->d:Landroid/view/animation/Animation;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kwlopen/sdk/camera/FocusImageView;->e:Landroid/os/Handler;

    .line 56
    const-string v0, "kwlopen_focus_focusing"

    invoke-static {p1, v0}, Lcom/b/a/a/f;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwlopen/sdk/camera/FocusImageView;->a:I

    .line 57
    const-string v0, "kwlopen_focus_focused"

    invoke-static {p1, v0}, Lcom/b/a/a/f;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwlopen/sdk/camera/FocusImageView;->b:I

    .line 58
    const-string v0, "kwlopen_focus_focus_failed"

    invoke-static {p1, v0}, Lcom/b/a/a/f;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwlopen/sdk/camera/FocusImageView;->c:I

    .line 61
    iget v0, p0, Lcom/kwlopen/sdk/camera/FocusImageView;->a:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/kwlopen/sdk/camera/FocusImageView;->b:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/kwlopen/sdk/camera/FocusImageView;->c:I

    if-ne v0, v2, :cond_1

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Animation is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    return-void
.end method


# virtual methods
.method public setFocusImg(I)V
    .locals 0

    .prologue
    .line 134
    iput p1, p0, Lcom/kwlopen/sdk/camera/FocusImageView;->a:I

    .line 135
    return-void
.end method

.method public setFocusSucceedImg(I)V
    .locals 0

    .prologue
    .line 143
    iput p1, p0, Lcom/kwlopen/sdk/camera/FocusImageView;->b:I

    .line 144
    return-void
.end method
