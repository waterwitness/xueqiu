.class final Lcom/xueqiu/android/base/t$1;
.super Lcom/xueqiu/android/base/b/p;
.source "SNBUserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/t;->b()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/t;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/t;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/xueqiu/android/base/t$1;->a:Lcom/xueqiu/android/base/t;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/xueqiu/android/base/t$1;->a:Lcom/xueqiu/android/base/t;

    .line 1044
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xueqiu/android/base/t;->e:Z

    .line 128
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 129
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 124
    check-cast p1, Lcom/xueqiu/android/common/model/LoginResult;

    .line 1133
    iget-object v0, p0, Lcom/xueqiu/android/base/t$1;->a:Lcom/xueqiu/android/base/t;

    .line 2044
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xueqiu/android/base/t;->e:Z

    .line 1134
    if-nez p1, :cond_0

    .line 1135
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.action.DISCONNECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    :goto_0
    return-void

    .line 1137
    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 1138
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getExpiresIn()J

    move-result-wide v0

    .line 1139
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getRefreshToken()Ljava/lang/String;

    move-result-object v3

    .line 1140
    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    const-wide/16 v4, 0x3c

    mul-long/2addr v4, v0

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v1

    .line 1141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2323
    invoke-virtual/range {v1 .. v7}, Lcom/xueqiu/android/base/t;->a(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 1142
    iget-object v0, p0, Lcom/xueqiu/android/base/t$1;->a:Lcom/xueqiu/android/base/t;

    .line 3044
    iput-object v2, v0, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 1144
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.intent.action.REFRESH_TOKEN_SUCCESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 1145
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.action.reconnect"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method
