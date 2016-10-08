.class final Lcom/xueqiu/android/community/CashierActivity$1;
.super Ljava/lang/Object;
.source "CashierActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/CashierActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/CashierActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/CashierActivity;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/xueqiu/android/community/CashierActivity$1;->a:Lcom/xueqiu/android/community/CashierActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/community/CashierActivity$1;->a:Lcom/xueqiu/android/community/CashierActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/CashierActivity;->finish()V

    .line 168
    return-void
.end method
