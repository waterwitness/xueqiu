.class final Lcom/xueqiu/android/stock/c/u$3;
.super Ljava/lang/Object;
.source "QuotesCenterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/u;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/u;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/u;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/u$3;->a:Lcom/xueqiu/android/stock/c/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/u$3;->a:Lcom/xueqiu/android/stock/c/u;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/u$3;->a:Lcom/xueqiu/android/stock/c/u;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/c/u;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x7f040010

    const v3, 0x7f040008

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/stock/c/u;->a(Landroid/content/Intent;II)V

    .line 198
    return-void
.end method
