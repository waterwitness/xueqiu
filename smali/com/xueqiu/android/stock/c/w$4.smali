.class final Lcom/xueqiu/android/stock/c/w$4;
.super Ljava/lang/Object;
.source "QuotesCenterItemFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/ptr/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/w;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/w;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/w;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/w$4;->a:Lcom/xueqiu/android/stock/c/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w$4;->a:Lcom/xueqiu/android/stock/c/w;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/w;->d(Lcom/xueqiu/android/stock/c/w;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/d/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/d/a;->refresh()V

    .line 186
    return-void
.end method
