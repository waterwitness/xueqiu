.class final Lcom/xueqiu/android/tactic/TacticDetailActivity$1;
.super Ljava/lang/Object;
.source "TacticDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/TacticDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/TacticDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$1;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 150
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x8fd

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 152
    const-string v1, "product_id"

    iget-object v2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$1;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->a(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/tactic/d/g;

    move-result-object v2

    .line 1191
    iget-wide v2, v2, Lcom/xueqiu/android/tactic/d/g;->id:J

    .line 152
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "OWN"

    iget-object v2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$1;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->a(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/tactic/d/g;

    move-result-object v2

    .line 1295
    iget-object v2, v2, Lcom/xueqiu/android/tactic/d/g;->owningStatus:Ljava/lang/String;

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$1;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->b(Lcom/xueqiu/android/tactic/TacticDetailActivity;)V

    .line 155
    const-string v1, "subscription_status"

    const-string v2, "\u5df2\u8ba2"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    :goto_0
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 160
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 161
    return-void

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$1;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->c(Lcom/xueqiu/android/tactic/TacticDetailActivity;)V

    .line 158
    const-string v1, "subscription_status"

    const-string v2, "\u672a\u8ba2"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
