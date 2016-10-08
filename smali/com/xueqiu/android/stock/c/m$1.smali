.class final Lcom/xueqiu/android/stock/c/m$1;
.super Ljava/lang/Object;
.source "PortfolioContainerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/m;->C()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/m;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/m$1;->a:Lcom/xueqiu/android/stock/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 150
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m$1;->a:Lcom/xueqiu/android/stock/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/m;->a(Lcom/xueqiu/android/stock/c/m;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m$1;->a:Lcom/xueqiu/android/stock/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/m;->b(Lcom/xueqiu/android/stock/c/m;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    return-void
.end method
