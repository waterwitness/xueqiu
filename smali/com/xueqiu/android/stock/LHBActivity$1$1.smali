.class final Lcom/xueqiu/android/stock/LHBActivity$1$1;
.super Ljava/lang/Object;
.source "LHBActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/LHBActivity$1;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/LHBActivity$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/LHBActivity$1;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/xueqiu/android/stock/LHBActivity$1$1;->a:Lcom/xueqiu/android/stock/LHBActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity$1$1;->a:Lcom/xueqiu/android/stock/LHBActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/stock/LHBActivity$1;->a:Lcom/xueqiu/android/stock/LHBActivity;

    invoke-static {v0, p2}, Lcom/xueqiu/android/stock/LHBActivity;->a(Lcom/xueqiu/android/stock/LHBActivity;I)I

    .line 73
    iget-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity$1$1;->a:Lcom/xueqiu/android/stock/LHBActivity$1;

    iget-object v1, v0, Lcom/xueqiu/android/stock/LHBActivity$1;->a:Lcom/xueqiu/android/stock/LHBActivity;

    iget-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity$1$1;->a:Lcom/xueqiu/android/stock/LHBActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/stock/LHBActivity$1;->a:Lcom/xueqiu/android/stock/LHBActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/LHBActivity;->a(Lcom/xueqiu/android/stock/LHBActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/LHBActivity;->a(Lcom/xueqiu/android/stock/LHBActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity$1$1;->a:Lcom/xueqiu/android/stock/LHBActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/stock/LHBActivity$1;->a:Lcom/xueqiu/android/stock/LHBActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/LHBActivity;->e(Lcom/xueqiu/android/stock/LHBActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/LHBActivity$1$1;->a:Lcom/xueqiu/android/stock/LHBActivity$1;

    iget-object v1, v1, Lcom/xueqiu/android/stock/LHBActivity$1;->a:Lcom/xueqiu/android/stock/LHBActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/LHBActivity;->d(Lcom/xueqiu/android/stock/LHBActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity$1$1;->a:Lcom/xueqiu/android/stock/LHBActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/stock/LHBActivity$1;->a:Lcom/xueqiu/android/stock/LHBActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/LHBActivity;->f(Lcom/xueqiu/android/stock/LHBActivity;)V

    .line 76
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 77
    return-void
.end method
