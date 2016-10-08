.class final Lcom/xueqiu/android/community/CashierActivity$3;
.super Ljava/lang/Object;
.source "CashierActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/CashierActivity;->finish()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/CashierActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/CashierActivity;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/xueqiu/android/community/CashierActivity$3;->a:Lcom/xueqiu/android/community/CashierActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/xueqiu/android/community/CashierActivity$3;->a:Lcom/xueqiu/android/community/CashierActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/CashierActivity;->c(Lcom/xueqiu/android/community/CashierActivity;)V

    .line 234
    iget-object v0, p0, Lcom/xueqiu/android/community/CashierActivity$3;->a:Lcom/xueqiu/android/community/CashierActivity;

    const v1, 0x7f040007

    const v2, 0x7f040013

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/community/CashierActivity;->overridePendingTransition(II)V

    .line 237
    iget-object v0, p0, Lcom/xueqiu/android/community/CashierActivity$3;->a:Lcom/xueqiu/android/community/CashierActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/CashierActivity;->d(Lcom/xueqiu/android/community/CashierActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xc1f

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 239
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 241
    :cond_0
    return-void
.end method
