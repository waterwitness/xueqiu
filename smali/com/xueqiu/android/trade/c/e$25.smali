.class final Lcom/xueqiu/android/trade/c/e$25;
.super Ljava/lang/Object;
.source "OrderFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 947
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/e$25;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 950
    if-eqz p2, :cond_0

    .line 951
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$25;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->A(Lcom/xueqiu/android/trade/c/e;)V

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$25;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->ae(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/xueqiu/android/trade/c/e;->a(Landroid/widget/LinearLayout;Z)V

    .line 954
    return-void
.end method
