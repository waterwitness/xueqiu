.class final Lcom/xueqiu/android/community/c/a$2;
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/stock/model/InvCalEventsPair;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/a;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/xueqiu/android/community/c/a$2;->a:Lcom/xueqiu/android/community/c/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 73
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 74
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 70
    check-cast p1, Ljava/util/ArrayList;

    .line 2078
    iget-object v0, p0, Lcom/xueqiu/android/community/c/a$2;->a:Lcom/xueqiu/android/community/c/a;

    .line 2240
    iget-object v0, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 2078
    if-eqz v0, :cond_0

    .line 2079
    iget-object v0, p0, Lcom/xueqiu/android/community/c/a$2;->a:Lcom/xueqiu/android/community/c/a;

    invoke-static {v0, p1}, Lcom/xueqiu/android/community/c/a;->a(Lcom/xueqiu/android/community/c/a;Ljava/util/ArrayList;)V

    .line 70
    :cond_0
    return-void
.end method
