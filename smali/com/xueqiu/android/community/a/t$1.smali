.class final Lcom/xueqiu/android/community/a/t$1;
.super Ljava/lang/Object;
.source "PublicTimelineAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/t;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/xueqiu/android/community/a/t;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/t;Ljava/lang/String;JLjava/lang/String;I)V
    .locals 1

    .prologue
    .line 543
    iput-object p1, p0, Lcom/xueqiu/android/community/a/t$1;->e:Lcom/xueqiu/android/community/a/t;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/t$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/xueqiu/android/community/a/t$1;->b:J

    iput-object p5, p0, Lcom/xueqiu/android/community/a/t$1;->c:Ljava/lang/String;

    iput p6, p0, Lcom/xueqiu/android/community/a/t$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 546
    new-instance v0, Lcom/xueqiu/android/community/model/HotEvent;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/HotEvent;-><init>()V

    .line 547
    iget-object v1, p0, Lcom/xueqiu/android/community/a/t$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/HotEvent;->setContent(Ljava/lang/String;)V

    .line 548
    iget-wide v2, p0, Lcom/xueqiu/android/community/a/t$1;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/community/model/HotEvent;->setId(J)V

    .line 549
    iget-object v1, p0, Lcom/xueqiu/android/community/a/t$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/HotEvent;->setTag(Ljava/lang/String;)V

    .line 550
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 551
    const-string v2, "topic_data"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 552
    const-string v2, "topic_bg"

    iget v3, p0, Lcom/xueqiu/android/community/a/t$1;->d:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 553
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/xueqiu/android/community/a/t$1;->e:Lcom/xueqiu/android/community/a/t;

    iget-object v3, v3, Lcom/xueqiu/android/community/a/t;->d:Lcom/xueqiu/android/community/a/o;

    invoke-static {v3}, Lcom/xueqiu/android/community/a/o;->a(Lcom/xueqiu/android/community/a/o;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/xueqiu/android/community/TopicWordActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 554
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 555
    iget-object v1, p0, Lcom/xueqiu/android/community/a/t$1;->e:Lcom/xueqiu/android/community/a/t;

    iget-object v1, v1, Lcom/xueqiu/android/community/a/t;->d:Lcom/xueqiu/android/community/a/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(Lcom/xueqiu/android/community/a/o;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 556
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x44c

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 557
    const-string v2, "special_id"

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/HotEvent;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 558
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 559
    return-void
.end method
