.class final Lcom/xueqiu/android/community/c/a$1;
.super Lcom/xueqiu/android/base/b/p;
.source "CompanyProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/c/a;->a(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic a:Lcom/xueqiu/android/community/c/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/a;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/xueqiu/android/community/c/a$1;->a:Lcom/xueqiu/android/community/c/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 56
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 53
    check-cast p1, Lorg/json/JSONObject;

    .line 2061
    iget-object v0, p0, Lcom/xueqiu/android/community/c/a$1;->a:Lcom/xueqiu/android/community/c/a;

    .line 2240
    iget-object v0, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 2061
    if-eqz v0, :cond_0

    .line 2062
    iget-object v0, p0, Lcom/xueqiu/android/community/c/a$1;->a:Lcom/xueqiu/android/community/c/a;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/a;->a(Lcom/xueqiu/android/community/c/a;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2063
    iget-object v0, p0, Lcom/xueqiu/android/community/c/a$1;->a:Lcom/xueqiu/android/community/c/a;

    invoke-static {v0, p1}, Lcom/xueqiu/android/community/c/a;->a(Lcom/xueqiu/android/community/c/a;Lorg/json/JSONObject;)V

    .line 53
    :cond_0
    return-void
.end method
