.class final Lcom/xueqiu/android/cube/b/h$3;
.super Ljava/lang/Object;
.source "RebalanceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/b/h;->a(Landroid/view/MenuItem;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/b/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/b/h;)V
    .locals 0

    .prologue
    .line 742
    iput-object p1, p0, Lcom/xueqiu/android/cube/b/h$3;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 745
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x57f

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 747
    return-void
.end method
