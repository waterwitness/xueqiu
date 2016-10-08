.class final Lcom/xueqiu/android/cube/b/d$1;
.super Lcom/xueqiu/android/base/b/p;
.source "NameCubeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/b/d;->a(Landroid/view/MenuItem;)Z
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
.field final synthetic a:Lcom/xueqiu/android/cube/b/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/b/d;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/xueqiu/android/cube/b/d$1;->a:Lcom/xueqiu/android/cube/b/d;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/d$1;->a:Lcom/xueqiu/android/cube/b/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/b/d;->z()V

    .line 127
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 122
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1131
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/d$1;->a:Lcom/xueqiu/android/cube/b/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/b/d;->z()V

    .line 1132
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1133
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/d$1;->a:Lcom/xueqiu/android/cube/b/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/b/d;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1134
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/d$1;->a:Lcom/xueqiu/android/cube/b/d;

    invoke-static {v1}, Lcom/xueqiu/android/cube/b/d;->a(Lcom/xueqiu/android/cube/b/d;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1135
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/d$1;->a:Lcom/xueqiu/android/cube/b/d;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/d;->b(Lcom/xueqiu/android/cube/b/d;)Lcom/xueqiu/android/cube/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/d$1;->a:Lcom/xueqiu/android/cube/b/d;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/d;->b(Lcom/xueqiu/android/cube/b/d;)Lcom/xueqiu/android/cube/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/b/d$1;->a:Lcom/xueqiu/android/cube/b/d;

    invoke-static {v1}, Lcom/xueqiu/android/cube/b/d;->a(Lcom/xueqiu/android/cube/b/d;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/cube/b/e;->c(Ljava/lang/String;)V

    .line 1138
    :cond_0
    :goto_0
    return-void

    .line 1139
    :cond_1
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
