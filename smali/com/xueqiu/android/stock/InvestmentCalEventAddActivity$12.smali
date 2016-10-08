.class final Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$12;
.super Ljava/lang/Object;
.source "InvestmentCalEventAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$12;->b:Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    iput-object p2, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$12;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity$12;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 803
    return-void
.end method
