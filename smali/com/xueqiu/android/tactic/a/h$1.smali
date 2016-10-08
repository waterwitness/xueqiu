.class final Lcom/xueqiu/android/tactic/a/h$1;
.super Ljava/lang/Object;
.source "TacticStoreListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/a/h;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/d/g;

.field final synthetic b:I

.field final synthetic c:Lcom/xueqiu/android/tactic/a/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/a/h;Lcom/xueqiu/android/tactic/d/g;I)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/xueqiu/android/tactic/a/h$1;->c:Lcom/xueqiu/android/tactic/a/h;

    iput-object p2, p0, Lcom/xueqiu/android/tactic/a/h$1;->a:Lcom/xueqiu/android/tactic/d/g;

    iput p3, p0, Lcom/xueqiu/android/tactic/a/h$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/a/h$1;->c:Lcom/xueqiu/android/tactic/a/h;

    iget-object v1, v1, Lcom/xueqiu/android/tactic/a/h;->c:Landroid/content/Context;

    const-class v2, Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    const-string v1, "tactic_id"

    iget-object v2, p0, Lcom/xueqiu/android/tactic/a/h$1;->a:Lcom/xueqiu/android/tactic/d/g;

    .line 1191
    iget-wide v2, v2, Lcom/xueqiu/android/tactic/d/g;->id:J

    .line 81
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/xueqiu/android/tactic/a/h$1;->c:Lcom/xueqiu/android/tactic/a/h;

    iget-object v1, v1, Lcom/xueqiu/android/tactic/a/h;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 83
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x8fc

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 84
    const-string v1, "product_id"

    iget-object v2, p0, Lcom/xueqiu/android/tactic/a/h$1;->a:Lcom/xueqiu/android/tactic/d/g;

    .line 2191
    iget-wide v2, v2, Lcom/xueqiu/android/tactic/d/g;->id:J

    .line 84
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "product_location_id"

    iget v2, p0, Lcom/xueqiu/android/tactic/a/h$1;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "product_label"

    iget-object v2, p0, Lcom/xueqiu/android/tactic/a/h$1;->a:Lcom/xueqiu/android/tactic/d/g;

    .line 2239
    iget-object v2, v2, Lcom/xueqiu/android/tactic/d/g;->tag:Ljava/lang/String;

    .line 86
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 87
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 88
    return-void
.end method
