.class final Lcom/xueqiu/android/message/client/a$45;
.super Ljava/lang/Object;
.source "CommandHandler.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/client/a;->a(Lcom/snowballfinance/messageplatform/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lcom/xueqiu/android/message/model/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/client/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/a;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/xueqiu/android/message/client/a$45;->a:Lcom/xueqiu/android/message/client/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 193
    check-cast p1, Lcom/xueqiu/android/message/model/Message;

    .line 1196
    iget-object v0, p0, Lcom/xueqiu/android/message/client/a$45;->a:Lcom/xueqiu/android/message/client/a;

    .line 2710
    :try_start_0
    new-instance v1, Lcom/xueqiu/android/message/model/PNMessageParser;

    invoke-direct {v1}, Lcom/xueqiu/android/message/model/PNMessageParser;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/model/PNMessageParser;->parse(Lorg/json/JSONObject;)Lcom/xueqiu/android/message/model/PNMessage;

    move-result-object v1

    .line 2711
    iget-object v0, v0, Lcom/xueqiu/android/message/client/a;->b:Lcom/xueqiu/android/message/client/d;

    .line 3063
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    move-result-object v2

    .line 3442
    iget-boolean v2, v2, Lcom/xueqiu/android/base/b;->c:Z

    .line 3063
    if-eqz v2, :cond_0

    .line 3064
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/PNMessage;->getMsgType()Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    move-result-object v2

    sget-object v3, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->HOLDING:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    if-eq v2, v3, :cond_0

    .line 3065
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/PNMessage;->getMsgType()Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    move-result-object v2

    sget-object v3, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->CALENDAR:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    if-eq v2, v3, :cond_0

    .line 3066
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/PNMessage;->getMsgType()Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    move-result-object v2

    sget-object v3, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->ATME:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    if-eq v2, v3, :cond_0

    .line 3067
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/PNMessage;->getMsgType()Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    move-result-object v2

    sget-object v3, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->COMMENT:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    if-ne v2, v3, :cond_1

    .line 3068
    :cond_0
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/PNMessage;->isPush()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3169
    :cond_1
    :goto_0
    return-void

    .line 3073
    :cond_2
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/PNMessage;->getMsgType()Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    move-result-object v2

    sget-object v3, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->HOLDING:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    if-ne v2, v3, :cond_3

    .line 3074
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/PNMessage;->getText()Ljava/lang/String;

    move-result-object v1

    .line 3075
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/xueqiu/android/message/client/d;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3076
    const-string v3, "extra_notification"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3077
    const/high16 v3, 0x24000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3078
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Lcom/xueqiu/android/message/client/d;->a([Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2712
    :catch_0
    move-exception v0

    .line 2713
    const-string v1, "CommandHandler"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3079
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/PNMessage;->getMsgType()Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    move-result-object v2

    sget-object v3, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->REPORTS:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    if-ne v2, v3, :cond_4

    .line 3080
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/PNMessage;->getText()Ljava/lang/String;

    move-result-object v1

    .line 3081
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/xueqiu/android/message/client/d;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3082
    const-string v3, "extra_notification"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3083
    const/high16 v3, 0x24000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3084
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Lcom/xueqiu/android/message/client/d;->a([Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_0

    .line 3085
    :cond_4
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/PNMessage;->getMsgType()Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    move-result-object v2

    sget-object v3, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->ATME:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    if-ne v2, v3, :cond_6

    .line 3086
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    move-result-object v2

    .line 4442
    iget-boolean v2, v2, Lcom/xueqiu/android/base/b;->c:Z

    .line 3086
    if-nez v2, :cond_5

    .line 3087
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/xueqiu/android/message/client/d;->a:Landroid/content/Context;

    const-class v4, Lcom/xueqiu/android/community/MentionMeStatusActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3088
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/PNMessage;->getText()Ljava/lang/String;

    move-result-object v1

    .line 3089
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/message/client/d;->a(Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v1, v3}, Lcom/xueqiu/android/message/client/d;->a([Landroid/content/Intent;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 3091
    :cond_5
    new-instance v1, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v1}, Lcom/xueqiu/android/base/b/t;-><init>()V

    .line 5032
    iget-object v2, v1, Lcom/xueqiu/android/base/b/t;->a:Lrx/i/a;

    invoke-virtual {v2}, Lrx/i/a;->c()Lrx/a;

    move-result-object v2

    .line 3092
    new-instance v3, Lcom/xueqiu/android/message/client/d$1;

    invoke-direct {v3, v0}, Lcom/xueqiu/android/message/client/d$1;-><init>(Lcom/xueqiu/android/message/client/d;)V

    new-instance v4, Lcom/xueqiu/android/message/client/d$2;

    invoke-direct {v4, v0}, Lcom/xueqiu/android/message/client/d$2;-><init>(Lcom/xueqiu/android/message/client/d;)V

    invoke-virtual {v2, v3, v4}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    .line 3103
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/ai;->e(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto/16 :goto_0

    .line 3106
    :cond_6
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/PNMessage;->getMsgType()Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    move-result-object v2

    sget-object v3, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->COMMENT:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    if-ne v2, v3, :cond_8

    .line 3107
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    move-result-object v2

    .line 5442
    iget-boolean v2, v2, Lcom/xueqiu/android/base/b;->c:Z

    .line 3107
    if-nez v2, :cond_7

    .line 3108
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/xueqiu/android/message/client/d;->a:Landroid/content/Context;

    const-class v4, Lcom/xueqiu/android/community/CommentReceiveActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3109
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/PNMessage;->getText()Ljava/lang/String;

    move-result-object v1

    .line 3110
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/message/client/d;->a(Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v1, v3}, Lcom/xueqiu/android/message/client/d;->a([Landroid/content/Intent;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 3112
    :cond_7
    new-instance v1, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v1}, Lcom/xueqiu/android/base/b/t;-><init>()V

    .line 6032
    iget-object v2, v1, Lcom/xueqiu/android/base/b/t;->a:Lrx/i/a;

    invoke-virtual {v2}, Lrx/i/a;->c()Lrx/a;

    move-result-object v2

    .line 3113
    new-instance v3, Lcom/xueqiu/android/message/client/d$3;

    invoke-direct {v3, v0}, Lcom/xueqiu/android/message/client/d$3;-><init>(Lcom/xueqiu/android/message/client/d;)V

    new-instance v4, Lcom/xueqiu/android/message/client/d$4;

    invoke-direct {v4, v0}, Lcom/xueqiu/android/message/client/d$4;-><init>(Lcom/xueqiu/android/message/client/d;)V

    invoke-virtual {v2, v3, v4}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    .line 3124
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/ai;->e(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto/16 :goto_0

    .line 3126
    :cond_8
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/PNMessage;->getMsgType()Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    move-result-object v2

    sget-object v3, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->FOLLOWED:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    if-ne v2, v3, :cond_a

    .line 3128
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    move-result-object v2

    .line 6442
    iget-boolean v2, v2, Lcom/xueqiu/android/base/b;->c:Z

    .line 3128
    if-nez v2, :cond_9

    .line 3129
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/xueqiu/android/message/client/d;->a:Landroid/content/Context;

    const-class v4, Lcom/xueqiu/android/community/UserListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3130
    const-string v3, "extra_list_type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3131
    new-instance v3, Lcom/xueqiu/android/community/model/User;

    invoke-direct {v3}, Lcom/xueqiu/android/community/model/User;-><init>()V

    .line 7069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 7077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 3132
    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/community/model/User;->setUserId(J)V

    .line 3133
    const-string v4, "extra_user"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3135
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/PNMessage;->getText()Ljava/lang/String;

    move-result-object v1

    .line 3136
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/message/client/d;->a(Landroid/content/Intent;)[Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v1, v3}, Lcom/xueqiu/android/message/client/d;->a([Landroid/content/Intent;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 3138
    :cond_9
    new-instance v1, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v1}, Lcom/xueqiu/android/base/b/t;-><init>()V

    .line 8032
    iget-object v2, v1, Lcom/xueqiu/android/base/b/t;->a:Lrx/i/a;

    invoke-virtual {v2}, Lrx/i/a;->c()Lrx/a;

    move-result-object v2

    .line 3139
    new-instance v3, Lcom/xueqiu/android/message/client/d$5;

    invoke-direct {v3, v0}, Lcom/xueqiu/android/message/client/d$5;-><init>(Lcom/xueqiu/android/message/client/d;)V

    new-instance v4, Lcom/xueqiu/android/message/client/d$6;

    invoke-direct {v4, v0}, Lcom/xueqiu/android/message/client/d$6;-><init>(Lcom/xueqiu/android/message/client/d;)V

    invoke-virtual {v2, v3, v4}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    .line 3150
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/ai;->e(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto/16 :goto_0

    .line 3153
    :cond_a
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/PNMessage;->getMsgType()Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    move-result-object v2

    sget-object v3, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->CALENDAR:Lcom/xueqiu/android/message/model/PNMessage$MessageType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v2, v3, :cond_1

    .line 3155
    :try_start_2
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/PNMessage;->getAttachment()Ljava/lang/String;

    move-result-object v2

    .line 3156
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3157
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3158
    const-string v2, "event_id"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3159
    const-string v2, "event_id"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/xueqiu/android/message/client/d;->a:Landroid/content/Context;

    const v5, 0x7f07005e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/PNMessage;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3161
    new-instance v3, Landroid/content/Intent;

    iget-object v4, v0, Lcom/xueqiu/android/message/client/d;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3162
    const-string v4, "extra_push_event_id"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3163
    const/high16 v2, 0x24000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3164
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v1, v3}, Lcom/xueqiu/android/message/client/d;->a([Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 3168
    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
