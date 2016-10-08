.class final Lcom/xueqiu/android/trade/e$1;
.super Ljava/lang/Object;
.source "TokenExpiresTimeSelectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/e;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/e;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/xueqiu/android/trade/e$1;->a:Lcom/xueqiu/android/trade/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 51
    iget-object v1, p0, Lcom/xueqiu/android/trade/e$1;->a:Lcom/xueqiu/android/trade/e;

    iget-object v0, p0, Lcom/xueqiu/android/trade/e$1;->a:Lcom/xueqiu/android/trade/e;

    .line 3028
    iget-object v0, v0, Lcom/xueqiu/android/trade/e;->b:Ljava/util/Map;

    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4101
    iget-object v2, v1, Lcom/xueqiu/android/trade/e;->a:Landroid/app/Activity;

    const v3, 0x7f0702fb

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4137
    iget-object v3, v1, Lcom/xueqiu/android/trade/e;->d:Landroid/app/Dialog;

    if-eqz v3, :cond_1

    .line 4140
    iget-object v3, v1, Lcom/xueqiu/android/trade/e;->e:Landroid/app/Dialog;

    if-eqz v3, :cond_0

    .line 4141
    iget-object v3, v1, Lcom/xueqiu/android/trade/e;->e:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 4143
    :cond_0
    new-instance v3, Lcom/xueqiu/android/common/widget/ae;

    iget-object v4, v1, Lcom/xueqiu/android/trade/e;->a:Landroid/app/Activity;

    invoke-direct {v3, v4, v2}, Lcom/xueqiu/android/common/widget/ae;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/xueqiu/android/trade/e;->e:Landroid/app/Dialog;

    .line 4144
    iget-object v2, v1, Lcom/xueqiu/android/trade/e;->e:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 4102
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/trade/e$2;

    invoke-direct {v3, v1, v0}, Lcom/xueqiu/android/trade/e$2;-><init>(Lcom/xueqiu/android/trade/e;I)V

    .line 4710
    iget-object v1, v2, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    invoke-virtual {v1, v0, v3}, Lcom/xueqiu/android/base/b/am;->a(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 52
    return-void
.end method
