.class public Lcom/xueqiu/android/common/GuideTutorialActivity;
.super Landroid/app/Activity;
.source "GuideTutorialActivity.java"


# instance fields
.field private a:Lcom/xueqiu/android/common/model/GuideTutorialType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public confirm(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/xueqiu/android/common/GuideTutorialActivity;->finish()V

    .line 64
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0}, Lcom/xueqiu/android/common/GuideTutorialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/GuideTutorialActivity;->requestWindowFeature(I)Z

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/xueqiu/android/common/GuideTutorialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_which_view"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/GuideTutorialType;

    iput-object v0, p0, Lcom/xueqiu/android/common/GuideTutorialActivity;->a:Lcom/xueqiu/android/common/model/GuideTutorialType;

    .line 33
    invoke-virtual {p0}, Lcom/xueqiu/android/common/GuideTutorialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_view_click_position"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/common/GuideTutorialActivity;->a:Lcom/xueqiu/android/common/model/GuideTutorialType;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/GuideTutorialType;->layoutRes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/GuideTutorialActivity;->setContentView(I)V

    move v0, v1

    .line 36
    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_2

    .line 37
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 38
    aget v1, v2, v0

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/GuideTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    new-instance v3, Lcom/xueqiu/android/common/GuideTutorialActivity$1;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/GuideTutorialActivity$1;-><init>(Lcom/xueqiu/android/common/GuideTutorialActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    aget v1, v2, v0

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/GuideTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 50
    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/GuideTutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 51
    new-instance v4, Lcom/xueqiu/android/common/GuideTutorialActivity$2;

    invoke-direct {v4, p0, v1, v3}, Lcom/xueqiu/android/common/GuideTutorialActivity$2;-><init>(Lcom/xueqiu/android/common/GuideTutorialActivity;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 60
    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/common/GuideTutorialActivity;->a:Lcom/xueqiu/android/common/model/GuideTutorialType;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/GuideTutorialType;->storeKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 83
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
