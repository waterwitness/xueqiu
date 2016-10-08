.class public Lcom/xueqiu/android/common/BigImageActivity;
.super Landroid/app/Activity;
.source "BigImageActivity.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/BigImageActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/common/BigImageActivity;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getOriginImage(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/ImageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    iget-object v1, p0, Lcom/xueqiu/android/common/BigImageActivity;->a:Ljava/lang/String;

    const-string v2, ".jpg!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/common/BigImageActivity;->a:Ljava/lang/String;

    const-string v2, ".jpeg!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/common/BigImageActivity;->a:Ljava/lang/String;

    const-string v2, ".png!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/common/BigImageActivity;->a:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xueqiu/android/common/BigImageActivity;->a:Ljava/lang/String;

    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/common/BigImageActivity;->a:Ljava/lang/String;

    .line 83
    :cond_1
    const-string v1, "url"

    iget-object v2, p0, Lcom/xueqiu/android/common/BigImageActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/BigImageActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    const v0, 0x7f040007

    const v1, 0x7f040008

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/BigImageActivity;->overridePendingTransition(II)V

    .line 86
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/BigImageActivity;->requestWindowFeature(I)Z

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/xueqiu/android/common/BigImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/BigImageActivity;->a:Ljava/lang/String;

    .line 43
    const v0, 0x7f0300ca

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/BigImageActivity;->setContentView(I)V

    .line 45
    new-instance v0, Lcom/xueqiu/android/common/BigImageActivity$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/BigImageActivity$1;-><init>(Lcom/xueqiu/android/common/BigImageActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    .line 74
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/BigImageActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/xueqiu/android/common/BigImageActivity;->finish()V

    .line 93
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
