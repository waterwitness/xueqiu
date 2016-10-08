.class final Lcom/xueqiu/android/community/c/b$1;
.super Lcom/xueqiu/android/base/b/p;
.source "FinanceDataFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/c/b;->a(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic a:Lcom/xueqiu/android/community/c/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/b;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/xueqiu/android/community/c/b$1;->a:Lcom/xueqiu/android/community/c/b;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 53
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 50
    check-cast p1, Lorg/json/JSONObject;

    .line 2058
    iget-object v0, p0, Lcom/xueqiu/android/community/c/b$1;->a:Lcom/xueqiu/android/community/c/b;

    .line 2240
    iget-object v0, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 2058
    if-eqz v0, :cond_0

    .line 2059
    iget-object v0, p0, Lcom/xueqiu/android/community/c/b$1;->a:Lcom/xueqiu/android/community/c/b;

    invoke-static {v0, p1}, Lcom/xueqiu/android/community/c/b;->a(Lcom/xueqiu/android/community/c/b;Lorg/json/JSONObject;)V

    .line 50
    :cond_0
    return-void
.end method
