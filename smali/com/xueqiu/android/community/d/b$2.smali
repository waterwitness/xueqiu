.class final Lcom/xueqiu/android/community/d/b$2;
.super Lcom/xueqiu/android/base/b/p;
.source "ReplierProfilePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/d/b;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/d/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d/b;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/xueqiu/android/community/d/b$2;->a:Lcom/xueqiu/android/community/d/b;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 80
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 77
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1086
    const-string v0, "amount"

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1087
    const-string v0, "amount"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v0

    .line 1088
    iget-object v1, p0, Lcom/xueqiu/android/community/d/b$2;->a:Lcom/xueqiu/android/community/d/b;

    invoke-static {v1}, Lcom/xueqiu/android/community/d/b;->a(Lcom/xueqiu/android/community/d/b;)Lcom/xueqiu/android/community/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xueqiu/android/community/b/f;->a(F)V

    .line 77
    :cond_0
    return-void
.end method
