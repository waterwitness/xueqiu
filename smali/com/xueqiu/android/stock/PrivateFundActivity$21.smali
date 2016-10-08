.class final Lcom/xueqiu/android/stock/PrivateFundActivity$21;
.super Lcom/xueqiu/android/base/b/p;
.source "PrivateFundActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/PrivateFundActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/PrivateFundActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$21;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 383
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 379
    check-cast p1, Lcom/google/gson/JsonArray;

    .line 1387
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$21;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->a(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/google/gson/JsonArray;)V

    .line 379
    return-void
.end method
