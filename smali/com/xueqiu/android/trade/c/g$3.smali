.class final Lcom/xueqiu/android/trade/c/g$3;
.super Ljava/lang/Object;
.source "PerformanceFragment.java"

# interfaces
.implements Landroid/support/v4/view/cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/g;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/g;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/g;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/g$3;->a:Lcom/xueqiu/android/trade/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IFI)V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public final b_(I)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g$3;->a:Lcom/xueqiu/android/trade/c/g;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/g;->b(Lcom/xueqiu/android/trade/c/g;)[Lcom/xueqiu/android/trade/c/i;

    move-result-object v0

    aget-object v0, v0, p1

    .line 145
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/i;->j()Z

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g$3;->a:Lcom/xueqiu/android/trade/c/g;

    invoke-static {v0, p1}, Lcom/xueqiu/android/trade/c/g;->a(Lcom/xueqiu/android/trade/c/g;I)V

    .line 150
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/g$3;->a:Lcom/xueqiu/android/trade/c/g;

    invoke-static {v0, p1}, Lcom/xueqiu/android/trade/c/g;->b(Lcom/xueqiu/android/trade/c/g;I)V

    .line 151
    return-void
.end method
