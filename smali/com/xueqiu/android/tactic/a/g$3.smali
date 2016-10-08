.class final Lcom/xueqiu/android/tactic/a/g$3;
.super Ljava/lang/Object;
.source "TacticPushAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/a/g;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/d/b;

.field final synthetic b:Lcom/xueqiu/android/tactic/a/g;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/a/g;Lcom/xueqiu/android/tactic/d/b;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/xueqiu/android/tactic/a/g$3;->b:Lcom/xueqiu/android/tactic/a/g;

    iput-object p2, p0, Lcom/xueqiu/android/tactic/a/g$3;->a:Lcom/xueqiu/android/tactic/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/xueqiu/android/tactic/a/g$3;->b:Lcom/xueqiu/android/tactic/a/g;

    iget-object v0, v0, Lcom/xueqiu/android/tactic/a/g;->g:Lcom/xueqiu/android/tactic/a/f;

    .line 1089
    iget-object v0, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 116
    iget-object v1, p0, Lcom/xueqiu/android/tactic/a/g$3;->a:Lcom/xueqiu/android/tactic/d/b;

    .line 1133
    iget-object v1, v1, Lcom/xueqiu/android/tactic/d/b;->symbol:Ljava/lang/String;

    .line 2103
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/xueqiu/android/trade/g;->a(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 117
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x900

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 119
    const-string v1, "product_id"

    iget-object v2, p0, Lcom/xueqiu/android/tactic/a/g$3;->b:Lcom/xueqiu/android/tactic/a/g;

    iget-object v2, v2, Lcom/xueqiu/android/tactic/a/g;->g:Lcom/xueqiu/android/tactic/a/f;

    invoke-static {v2}, Lcom/xueqiu/android/tactic/a/f;->b(Lcom/xueqiu/android/tactic/a/f;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "stock_symbol"

    iget-object v2, p0, Lcom/xueqiu/android/tactic/a/g$3;->a:Lcom/xueqiu/android/tactic/d/b;

    .line 2133
    iget-object v2, v2, Lcom/xueqiu/android/tactic/d/b;->symbol:Ljava/lang/String;

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 121
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 122
    return-void
.end method
