.class final Lcom/xueqiu/android/common/search/b/a$1;
.super Lcom/xueqiu/android/base/b/p;
.source "USearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/search/b/a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/common/search/b/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/search/b/a;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/xueqiu/android/common/search/b/a$1;->b:Lcom/xueqiu/android/common/search/b/a;

    iput-object p3, p0, Lcom/xueqiu/android/common/search/b/a$1;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a$1;->b:Lcom/xueqiu/android/common/search/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/common/search/b/a;->a(Lcom/xueqiu/android/common/search/b/a;Lorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 73
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 63
    check-cast p1, Lorg/json/JSONObject;

    .line 1067
    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a$1;->b:Lcom/xueqiu/android/common/search/b/a;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xueqiu/android/common/search/b/a;->a(Lcom/xueqiu/android/common/search/b/a;Lorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 63
    return-void
.end method
