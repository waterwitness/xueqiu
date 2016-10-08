.class final Lcom/xueqiu/android/stock/PrivateFundActivity$14;
.super Ljava/lang/Object;
.source "PrivateFundActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/aa;


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
    .line 914
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$14;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 917
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$14;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->t(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/common/widget/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/z;->dismiss()V

    .line 918
    const-string v0, "/S/P000275/subscribe-choice"

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$14;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 919
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$14;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->t(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/common/widget/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/z;->dismiss()V

    .line 924
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$14;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->finish()V

    .line 925
    return-void
.end method
