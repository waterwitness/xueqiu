.class final Lcom/xueqiu/android/stock/h$1;
.super Landroid/content/BroadcastReceiver;
.source "InvestmentCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/h;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/h;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/xueqiu/android/stock/h$1;->a:Lcom/xueqiu/android/stock/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 135
    const-string v0, "delete_event_id"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 136
    iget-object v0, p0, Lcom/xueqiu/android/stock/h$1;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v0}, Lcom/xueqiu/android/stock/h;->a(Lcom/xueqiu/android/stock/h;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/stock/h$1;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v0}, Lcom/xueqiu/android/stock/h;->a(Lcom/xueqiu/android/stock/h;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/xueqiu/android/stock/h$1;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v0}, Lcom/xueqiu/android/stock/h;->a(Lcom/xueqiu/android/stock/h;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v3

    move v1, v3

    .line 139
    :goto_0
    if-ge v4, v5, :cond_0

    .line 140
    iget-object v0, p0, Lcom/xueqiu/android/stock/h$1;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v0}, Lcom/xueqiu/android/stock/h;->a(Lcom/xueqiu/android/stock/h;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/InvCalEventsPair;

    .line 141
    iget-object v8, v0, Lcom/xueqiu/android/stock/model/InvCalEventsPair;->mEventList:Ljava/util/ArrayList;

    .line 142
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v2, v3

    .line 143
    :goto_1
    if-ge v2, v9, :cond_4

    .line 144
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;

    .line 145
    iget-wide v10, v0, Lcom/xueqiu/android/stock/model/InvestmentCalendarEvent;->mId:J

    cmp-long v0, v10, v6

    if-nez v0, :cond_2

    .line 146
    invoke-interface {v8, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 147
    const/4 v0, 0x1

    .line 151
    :goto_2
    if-eqz v0, :cond_3

    .line 152
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/xueqiu/android/stock/h$1;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v0}, Lcom/xueqiu/android/stock/h;->a(Lcom/xueqiu/android/stock/h;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/h$1;->a:Lcom/xueqiu/android/stock/h;

    iget-object v1, p0, Lcom/xueqiu/android/stock/h$1;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v1}, Lcom/xueqiu/android/stock/h;->a(Lcom/xueqiu/android/stock/h;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/h;->a(Lcom/xueqiu/android/stock/h;Ljava/util/ArrayList;)V

    .line 160
    :cond_1
    return-void

    .line 143
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 139
    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method
