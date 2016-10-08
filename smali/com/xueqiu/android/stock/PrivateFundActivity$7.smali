.class final Lcom/xueqiu/android/stock/PrivateFundActivity$7;
.super Ljava/lang/Object;
.source "PrivateFundActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 578
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$7;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$7;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->h(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/stock/i;

    move-result-object v0

    .line 2122
    iget-object v0, v0, Lcom/xueqiu/android/stock/i;->fundIntroUrl:Ljava/lang/String;

    .line 581
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$7;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 582
    return-void
.end method
