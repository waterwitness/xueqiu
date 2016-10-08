.class final Lcom/xueqiu/android/trade/c/e$15;
.super Ljava/lang/Object;
.source "OrderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/e;)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/e$15;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 580
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 581
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e$15;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/xueqiu/android/trade/c/e;->a(Lcom/xueqiu/android/trade/c/e;Ljava/lang/String;)V

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$15;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->Q(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 584
    return-void
.end method
