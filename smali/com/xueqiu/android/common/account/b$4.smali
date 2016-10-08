.class final Lcom/xueqiu/android/common/account/b$4;
.super Lcom/xueqiu/android/base/b/p;
.source "RegisterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/b;
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
.field final synthetic a:Lcom/xueqiu/android/common/account/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/b;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/xueqiu/android/common/account/b$4;->a:Lcom/xueqiu/android/common/account/b;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 103
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 104
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1108
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/xueqiu/android/common/account/b$4;->a:Lcom/xueqiu/android/common/account/b;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/common/account/b;->d:Ljava/lang/String;

    .line 1110
    iget-object v0, p0, Lcom/xueqiu/android/common/account/b$4;->a:Lcom/xueqiu/android/common/account/b;

    iput-boolean v2, v0, Lcom/xueqiu/android/common/account/b;->c:Z

    .line 1111
    iget-object v0, p0, Lcom/xueqiu/android/common/account/b$4;->a:Lcom/xueqiu/android/common/account/b;

    iput-boolean v2, v0, Lcom/xueqiu/android/common/account/b;->e:Z

    .line 1112
    iget-object v0, p0, Lcom/xueqiu/android/common/account/b$4;->a:Lcom/xueqiu/android/common/account/b;

    invoke-static {v0, v2}, Lcom/xueqiu/android/common/account/b;->a(Lcom/xueqiu/android/common/account/b;Z)V

    .line 1113
    iget-object v0, p0, Lcom/xueqiu/android/common/account/b$4;->a:Lcom/xueqiu/android/common/account/b;

    .line 2022
    iget-object v0, v0, Lcom/xueqiu/android/common/account/b;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    .line 1113
    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->i()V

    .line 1117
    :goto_0
    return-void

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/b$4;->a:Lcom/xueqiu/android/common/account/b;

    iget-boolean v0, v0, Lcom/xueqiu/android/common/account/b;->e:Z

    if-eqz v0, :cond_1

    .line 1116
    iget-object v0, p0, Lcom/xueqiu/android/common/account/b$4;->a:Lcom/xueqiu/android/common/account/b;

    .line 3022
    iget-object v0, v0, Lcom/xueqiu/android/common/account/b;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    .line 1116
    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->j()V

    .line 1117
    iget-object v0, p0, Lcom/xueqiu/android/common/account/b$4;->a:Lcom/xueqiu/android/common/account/b;

    .line 4022
    iget-object v0, v0, Lcom/xueqiu/android/common/account/b;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    .line 1117
    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->i()V

    goto :goto_0

    .line 1119
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/account/b$4;->a:Lcom/xueqiu/android/common/account/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xueqiu/android/common/account/b;->d:Ljava/lang/String;

    .line 1120
    iget-object v0, p0, Lcom/xueqiu/android/common/account/b$4;->a:Lcom/xueqiu/android/common/account/b;

    iput-boolean v3, v0, Lcom/xueqiu/android/common/account/b;->c:Z

    .line 1121
    iget-object v0, p0, Lcom/xueqiu/android/common/account/b$4;->a:Lcom/xueqiu/android/common/account/b;

    invoke-static {v0, v3}, Lcom/xueqiu/android/common/account/b;->a(Lcom/xueqiu/android/common/account/b;Z)V

    goto :goto_0
.end method
