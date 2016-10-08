.class final Lcom/xueqiu/android/stock/LHBActivity$3;
.super Lcom/xueqiu/android/base/b/p;
.source "LHBActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/LHBActivity;
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
.field final synthetic a:Lcom/xueqiu/android/stock/LHBActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/LHBActivity;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/xueqiu/android/stock/LHBActivity$3;->a:Lcom/xueqiu/android/stock/LHBActivity;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 127
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 128
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 124
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1132
    iget-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity$3;->a:Lcom/xueqiu/android/stock/LHBActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stock/LHBActivity;->a(Lcom/xueqiu/android/stock/LHBActivity;Lcom/google/gson/JsonObject;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1133
    iget-object v1, p0, Lcom/xueqiu/android/stock/LHBActivity$3;->a:Lcom/xueqiu/android/stock/LHBActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/LHBActivity;->g(Lcom/xueqiu/android/stock/LHBActivity;)Lcom/xueqiu/android/stock/a/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/a/j;->a(Ljava/util/ArrayList;)V

    .line 124
    return-void
.end method
