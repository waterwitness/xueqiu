.class final Lcom/xueqiu/android/community/a/ak$9;
.super Ljava/lang/Object;
.source "StatusListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/ak;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$9;->c:Lcom/xueqiu/android/community/a/ak;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/ak$9;->a:Ljava/lang/String;

    iput p3, p0, Lcom/xueqiu/android/community/a/ak$9;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 896
    const-string v0, "--"

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$9;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    :goto_0
    return-void

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$9;->c:Lcom/xueqiu/android/community/a/ak;

    .line 1089
    iget-object v0, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 899
    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$9;->a:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/xueqiu/android/community/a/ak$9;->b:I

    invoke-static {v0, v1, v2, v3}, Lcom/xueqiu/android/trade/g;->a(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 901
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x514

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 902
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak$9;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 903
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method
