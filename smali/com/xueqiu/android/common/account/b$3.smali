.class final Lcom/xueqiu/android/common/account/b$3;
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
        "Lcom/xueqiu/android/common/model/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/b;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/xueqiu/android/common/account/b$3;->a:Lcom/xueqiu/android/common/account/b;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 86
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 87
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 83
    check-cast p1, Lcom/xueqiu/android/common/model/LoginResult;

    .line 1091
    iget-object v0, p0, Lcom/xueqiu/android/common/account/b$3;->a:Lcom/xueqiu/android/common/account/b;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 2022
    iput-object v1, v0, Lcom/xueqiu/android/common/account/b;->b:Ljava/lang/String;

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 1092
    iget-object v1, p0, Lcom/xueqiu/android/common/account/b$3;->a:Lcom/xueqiu/android/common/account/b;

    .line 3022
    iget-object v1, v1, Lcom/xueqiu/android/common/account/b;->b:Ljava/lang/String;

    .line 3169
    iput-object v1, v0, Lcom/xueqiu/android/base/t;->f:Ljava/lang/String;

    .line 83
    return-void
.end method
