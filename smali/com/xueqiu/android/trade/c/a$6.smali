.class final Lcom/xueqiu/android/trade/c/a$6;
.super Lcom/xueqiu/android/base/b/p;
.source "BindBrokerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/a;
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
.field final synthetic a:Lcom/xueqiu/android/trade/c/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/a;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/a$6;->a:Lcom/xueqiu/android/trade/c/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 176
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 177
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 173
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1181
    if-eqz p1, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a$6;->a:Lcom/xueqiu/android/trade/c/a;

    invoke-static {v0, p1}, Lcom/xueqiu/android/trade/c/a;->a(Lcom/xueqiu/android/trade/c/a;Lcom/google/gson/JsonObject;)V

    .line 173
    :cond_0
    return-void
.end method
