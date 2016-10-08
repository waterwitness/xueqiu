.class final Lcom/xueqiu/android/common/account/b$2;
.super Lcom/xueqiu/android/base/b/p;
.source "RegisterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xueqiu/android/common/account/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/b;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/xueqiu/android/common/account/b$2;->d:Lcom/xueqiu/android/common/account/b;

    iput-boolean p2, p0, Lcom/xueqiu/android/common/account/b$2;->a:Z

    iput-object p3, p0, Lcom/xueqiu/android/common/account/b$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xueqiu/android/common/account/b$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/common/account/b$2;->d:Lcom/xueqiu/android/common/account/b;

    .line 1022
    iget-object v0, v0, Lcom/xueqiu/android/common/account/b;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    .line 62
    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->i()V

    .line 63
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 59
    .line 1068
    iget-object v0, p0, Lcom/xueqiu/android/common/account/b$2;->d:Lcom/xueqiu/android/common/account/b;

    .line 2022
    iget-object v0, v0, Lcom/xueqiu/android/common/account/b;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    .line 1068
    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->i()V

    .line 1069
    iget-boolean v0, p0, Lcom/xueqiu/android/common/account/b$2;->a:Z

    if-nez v0, :cond_1

    .line 1070
    iget-object v0, p0, Lcom/xueqiu/android/common/account/b$2;->d:Lcom/xueqiu/android/common/account/b;

    .line 3022
    iget-object v0, v0, Lcom/xueqiu/android/common/account/b;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    .line 1070
    iget-object v1, p0, Lcom/xueqiu/android/common/account/b$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/common/account/b$2;->c:Ljava/lang/String;

    .line 3385
    const/16 v3, 0x1e

    iput v3, v0, Lcom/xueqiu/android/common/account/LoginActivity;->q:I

    .line 3386
    iget-object v3, v0, Lcom/xueqiu/android/common/account/LoginActivity;->p:Landroid/os/Handler;

    if-nez v3, :cond_0

    .line 3387
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, v0, Lcom/xueqiu/android/common/account/LoginActivity;->p:Landroid/os/Handler;

    .line 3390
    :cond_0
    iget-object v3, v0, Lcom/xueqiu/android/common/account/LoginActivity;->j:Landroid/widget/TextView;

    .line 3391
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3393
    new-instance v4, Lcom/xueqiu/android/common/account/LoginActivity$5;

    invoke-direct {v4, v0, v3, v1, v2}, Lcom/xueqiu/android/common/account/LoginActivity$5;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 3432
    iget-object v1, v0, Lcom/xueqiu/android/common/account/LoginActivity;->p:Landroid/os/Handler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3433
    const v1, 0x7f070357

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v0, v0, Lcom/xueqiu/android/common/account/LoginActivity;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/r;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    const-string v0, "\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 59
    :cond_1
    return-void
.end method
