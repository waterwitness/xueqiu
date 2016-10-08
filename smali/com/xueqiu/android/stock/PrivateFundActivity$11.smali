.class final Lcom/xueqiu/android/stock/PrivateFundActivity$11;
.super Ljava/lang/Object;
.source "PrivateFundActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/PrivateFundActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/PrivateFundActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/PrivateFundActivity;)V
    .locals 0

    .prologue
    .line 795
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$11;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 798
    const v1, 0x7f0e0006

    if-ne p1, v1, :cond_0

    .line 799
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$11;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->o(Lcom/xueqiu/android/stock/PrivateFundActivity;)V

    .line 811
    :goto_0
    return v0

    .line 801
    :cond_0
    const v1, 0x7f0e0003

    if-ne p1, v1, :cond_1

    .line 802
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$11;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->p(Lcom/xueqiu/android/stock/PrivateFundActivity;)V

    goto :goto_0

    .line 804
    :cond_1
    const v1, 0x7f0e0005

    if-ne p1, v1, :cond_2

    .line 805
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$11;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->q(Lcom/xueqiu/android/stock/PrivateFundActivity;)V

    goto :goto_0

    .line 807
    :cond_2
    const v1, 0x7f0e0015

    if-ne p1, v1, :cond_3

    .line 808
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$11;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->r(Lcom/xueqiu/android/stock/PrivateFundActivity;)V

    goto :goto_0

    .line 811
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
