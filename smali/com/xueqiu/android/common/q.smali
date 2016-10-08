.class public final Lcom/xueqiu/android/common/q;
.super Ljava/lang/Object;
.source "SNBLinkJumpHandler.java"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-string v0, "/mp/"

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/common/q;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 593
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 594
    const-string v1, "extra_notification"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 595
    if-eqz p1, :cond_0

    .line 596
    const-string v1, "extra_exchange_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    :cond_0
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 599
    return-object v0
.end method

.method private static a(Lcom/xueqiu/android/community/model/User;Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 425
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 426
    const-string v1, "extra_user"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 427
    return-object v0
.end method

.method private static a(Ljava/lang/Long;Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 482
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 483
    const-string v1, "status_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 484
    return-object v0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 11

    .prologue
    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 202
    .line 203
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 12777
    :cond_0
    :goto_0
    return-object v2

    .line 207
    :cond_1
    invoke-static {p0}, Lcom/xueqiu/android/base/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/n/\\S+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    :cond_2
    const-string v0, "\\?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, v1

    .line 209
    const/16 v0, 0x2f

    const/16 v5, 0x8

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 210
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 211
    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 212
    array-length v7, v0

    if-eqz v7, :cond_0

    .line 215
    const-string v7, "[g|G]/\\S+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 216
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 7475
    new-instance v2, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/message/GroupProfileActivity;

    invoke-direct {v2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7476
    const-string v1, "extra_group_id"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 217
    :cond_3
    const-string v7, "/people"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 218
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/xueqiu/android/community/FindPeopleActivity;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 220
    :cond_4
    const-string v7, "calendar"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 221
    invoke-static {v4, p1}, Lcom/xueqiu/android/common/q;->d(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 222
    :cond_5
    const-string v7, "/performance"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 223
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    const-string v0, "extra_notification"

    const/16 v1, 0xa

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    const/high16 v0, 0x4000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 227
    :cond_6
    const-string v7, "/n/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 228
    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/xueqiu/android/community/model/User;

    invoke-direct {v1}, Lcom/xueqiu/android/community/model/User;-><init>()V

    .line 231
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/model/User;->setScreenName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_1
    invoke-static {v1, p1}, Lcom/xueqiu/android/common/q;->a(Lcom/xueqiu/android/community/model/User;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0

    .line 233
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 236
    :cond_7
    const-string v7, "/p/discover"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 7610
    const-string v0, "\\?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7612
    array-length v1, v0

    if-le v1, v3, :cond_a

    .line 7613
    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/xueqiu/android/base/util/az;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 7614
    const-string v0, "action"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7615
    const-string v2, "editorial"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 7616
    const-string v0, "editorialId"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 7617
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/cube/CubeEditorialActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7618
    const-string v1, "extra_editorial_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :goto_2
    move-object v2, v0

    .line 237
    goto/16 :goto_0

    .line 7619
    :cond_8
    const-string v1, "hot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7620
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/cube/CubeCardListActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7621
    const-string v1, "extra_rank_category"

    sget-object v2, Lcom/xueqiu/android/cube/model/CubeRankCategory;->MOST_POPULAR:Lcom/xueqiu/android/cube/model/CubeRankCategory;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/CubeRankCategory;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 7623
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/cube/CubeCardListActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7624
    const-string v1, "extra_rank_category"

    sget-object v2, Lcom/xueqiu/android/cube/model/CubeRankCategory;->MOST_VALUABLE:Lcom/xueqiu/android/cube/model/CubeRankCategory;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/CubeRankCategory;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 7627
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7628
    const-string v1, "extra_notification"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 238
    :cond_b
    const-string v7, "/arena"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 7635
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 240
    :cond_c
    const-string v7, "/today/lc"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 241
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/xueqiu/android/community/TodayTopicActivity;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    const-string v0, "view_which"

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 244
    :cond_d
    const-string v7, "/paidMention/ask"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 7737
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7738
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 7741
    new-instance v2, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/community/ReplierProfileActivity;

    invoke-direct {v2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7742
    const-string v1, "extra_write_type"

    const/4 v4, 0x5

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7743
    const-string v1, "user_id"

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v0, v0, v4

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7744
    const-string v0, "from_user_profile"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7745
    const-string v0, "extra_check_show_hint"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 246
    :cond_e
    const-string v7, "special/item"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 7764
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7765
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 7768
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 7769
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7770
    const-string v3, "topic_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_0

    .line 248
    :cond_f
    const-string v7, "strategy/store"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 8750
    const-string v0, "\\?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 8752
    array-length v2, v0

    if-le v2, v3, :cond_39

    .line 8753
    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/xueqiu/android/base/util/az;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 8754
    const-string v2, "category"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 8755
    const-string v1, "category"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 8758
    :goto_3
    new-instance v2, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/tactic/TacticStoreActivity;

    invoke-direct {v2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8759
    const-string v1, "extra_category"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 250
    :cond_10
    const-string v7, "strategy/message"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 251
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 252
    array-length v7, v0

    if-eqz v7, :cond_0

    .line 255
    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 257
    const-string v7, "extra_push_id"

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 258
    const-class v7, Lcom/xueqiu/android/tactic/c/b;

    invoke-static {p1, v7, v0}, Lcom/xueqiu/android/common/SingleFragmentActivity;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 330
    :goto_4
    const-string v7, "xueqiu.com/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 331
    const-string v7, "^hq"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 11590
    invoke-static {p1, v2}, Lcom/xueqiu/android/common/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0

    .line 259
    :cond_11
    const-string v7, "broker/myaccount"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 9488
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9489
    const-string v0, "extra_notification"

    const/16 v1, 0x9

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9490
    const/high16 v0, 0x4000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 261
    :cond_12
    const-string v7, "broker/notifyList"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 9495
    const-class v0, Lcom/xueqiu/android/trade/c/w;

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/SingleFragmentActivity;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0

    .line 263
    :cond_13
    const-string v7, "service/live"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 9500
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/xueqiu/android/community/LiveNewsActivity;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 265
    :cond_14
    const-string v7, "special/list"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 10397
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 267
    :cond_15
    const-string v7, "pm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 10402
    const-string v0, "\\?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 10403
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 10405
    array-length v2, v0

    if-le v2, v3, :cond_17

    .line 10406
    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/xueqiu/android/base/util/az;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 10407
    const-string v2, "type"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10408
    if-eqz v0, :cond_16

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 10411
    :cond_16
    const-string v0, "page_type"

    const-string v2, "comment"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10416
    :goto_5
    const-class v0, Lcom/xueqiu/android/community/c/l;

    invoke-static {p1, v0, v1}, Lcom/xueqiu/android/common/SingleFragmentActivity;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0

    .line 10414
    :cond_17
    const-string v0, "page_type"

    const-string v2, "question"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 269
    :cond_18
    aget-object v7, v0, v1

    const-string v8, "S"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 271
    array-length v7, v0

    if-le v7, v10, :cond_19

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v0, v7

    const-string v8, "\\d+#\\d+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 273
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    .line 274
    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 275
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/Long;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0

    .line 277
    :cond_19
    array-length v7, v0

    if-le v7, v10, :cond_1f

    .line 278
    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v0, v7

    .line 279
    const-string v8, "\\d+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 280
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/Long;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0

    .line 281
    :cond_1a
    const-string v8, "ZCFZB"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    const-string v8, "XJLLB"

    .line 282
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    const-string v8, "GSLRB"

    .line 283
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 285
    :cond_1b
    aget-object v0, v0, v3

    .line 286
    new-instance v2, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/stock/FinancialDataActivity;

    invoke-direct {v2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    const-string v1, "extra_symbol"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v0, "extra_page_name"

    invoke-virtual {v2, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 290
    :cond_1c
    const-string v8, "RZRQ"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 291
    aget-object v0, v0, v3

    .line 292
    new-instance v2, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/stock/RZRQActivity;

    invoke-direct {v2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 293
    const-string v1, "extra_symbol"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 295
    :cond_1d
    const-string v8, "LHB"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 296
    aget-object v0, v0, v3

    .line 297
    new-instance v2, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/stock/LHBActivity;

    invoke-direct {v2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    const-string v1, "extra_symbol"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_1e
    move-object v0, v2

    .line 301
    goto/16 :goto_4

    :cond_1f
    array-length v7, v0

    if-ne v7, v10, :cond_38

    .line 302
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 10420
    new-instance v1, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-direct {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0

    .line 304
    :cond_20
    aget-object v7, v0, v1

    .line 11016
    const-string v8, "^\\d+$"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    .line 304
    if-eqz v7, :cond_23

    array-length v7, v0

    const/4 v8, 0x3

    if-ge v7, v8, :cond_23

    const-string v7, "^(\\d+)/(cubes|friends|follows|stocks|answers|hot|fund)$"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 305
    array-length v7, v0

    if-le v7, v3, :cond_22

    .line 307
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    .line 308
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 309
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 311
    :cond_21
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/Long;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0

    .line 312
    :cond_22
    aget-object v7, v0, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v9, :cond_38

    .line 314
    new-instance v2, Lcom/xueqiu/android/community/model/User;

    invoke-direct {v2}, Lcom/xueqiu/android/community/model/User;-><init>()V

    .line 315
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/xueqiu/android/community/model/User;->setUserId(J)V

    .line 316
    invoke-static {v2, p1}, Lcom/xueqiu/android/common/q;->a(Lcom/xueqiu/android/community/model/User;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0

    .line 318
    :cond_23
    array-length v7, v0

    if-ne v7, v3, :cond_24

    aget-object v7, v0, v1

    const-string v8, "dh"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    array-length v7, v0

    if-ne v7, v3, :cond_24

    aget-object v7, v0, v1

    const-string v8, "today"

    .line 319
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    aget-object v7, v0, v1

    .line 320
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v9, :cond_24

    aget-object v7, v0, v1

    const-string v8, "\\w+"

    .line 321
    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_25

    :cond_24
    array-length v7, v0

    if-ne v7, v10, :cond_38

    aget-object v7, v0, v3

    const-string v8, "profile"

    .line 322
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 324
    :cond_25
    new-instance v2, Lcom/xueqiu/android/community/model/User;

    invoke-direct {v2}, Lcom/xueqiu/android/community/model/User;-><init>()V

    .line 325
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/xueqiu/android/community/model/User;->setUserId(J)V

    .line 326
    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/community/model/User;->setDomain(Ljava/lang/String;)V

    .line 327
    invoke-static {v2, p1}, Lcom/xueqiu/android/common/q;->a(Lcom/xueqiu/android/community/model/User;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0

    .line 333
    :cond_26
    const-string v7, "^hq#.+"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 334
    const-string v2, "#"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 335
    const-string v4, "repurchase"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 336
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/xueqiu/android/stock/BondBuyBackActivity;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 337
    :cond_27
    const-string v4, "exchange="

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 338
    const/16 v0, 0x9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {p1, v0}, Lcom/xueqiu/android/common/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0

    .line 340
    :cond_28
    const-string v4, "AH"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 341
    const-string v0, "AH"

    invoke-static {p1, v0}, Lcom/xueqiu/android/common/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_0

    :cond_29
    move-object v2, v0

    .line 377
    :goto_6
    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 378
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/xueqiu/android/base/h5/H5Activity;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14084
    invoke-static {}, Lcom/xueqiu/android/base/h5/f;->a()Lcom/xueqiu/android/base/h5/e;

    move-result-object v0

    .line 14134
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/e;->b:Lcom/xueqiu/android/base/h5/k;

    .line 379
    invoke-virtual {v0, v6}, Lcom/xueqiu/android/base/h5/k;->find(Ljava/lang/String;)Lcom/xueqiu/android/base/h5/g;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 380
    const-string v0, "extra_url"

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string v0, "extra_is_module"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 343
    :cond_2a
    const-string v7, "^today$"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 11640
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/xueqiu/android/community/TodayTopicActivity;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 345
    :cond_2b
    const-string v7, "^u\\?q=.*"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 12571
    invoke-static {p0}, Lcom/xueqiu/android/base/util/az;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 12572
    const-string v1, "q"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12573
    new-instance v2, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/search/SearchActivity;

    invoke-direct {v2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12574
    const-string v1, "search_word"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12575
    const-string v0, "search_type"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 347
    :cond_2c
    const-string v7, "^k\\?q=.*"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 12580
    new-instance v0, Lcom/xueqiu/android/community/model/HotEvent;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/HotEvent;-><init>()V

    .line 12581
    invoke-static {p0}, Lcom/xueqiu/android/base/util/az;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/HotEvent;->setTag(Ljava/lang/String;)V

    .line 12582
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12583
    const-string v2, "topic_data"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12584
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/xueqiu/android/community/TopicWordActivity;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12585
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 349
    :cond_2d
    const-string v7, "^strategy/[1-9]\\d*$"

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 12775
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 12776
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 12779
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 12780
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12781
    const-string v3, "tactic_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_0

    .line 351
    :cond_2e
    const-string v2, "^im/session/\\d{1,1}/\\d+"

    invoke-virtual {v4, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 352
    const/16 v0, 0x2f

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 353
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 354
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_2f

    move v1, v3

    .line 13603
    :cond_2f
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13604
    const-string v0, "extra_talk_id"

    invoke-virtual {v2, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 13605
    const-string v0, "extra_talk_is_group"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 356
    :cond_30
    const-string v2, "^[p|P]/([z|Z][h|H]\\d+)/history(.*)"

    invoke-virtual {v4, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 357
    const-string v2, "^[p|P]/([z|Z][h|H]\\d+)/history(.*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 358
    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 359
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 360
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    const-string v0, "extra_symbol"

    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/az;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 363
    const-string v4, "sell_flag"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 364
    const-string v4, "extra_sell_flag"

    const-string v7, "sell_flag"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_31
    move-object v0, v2

    :cond_32
    move-object v2, v0

    .line 367
    goto/16 :goto_6

    :cond_33
    const-string v2, "^[p|P]/((([z|Z][h|H])|([s|S][p|P]))\\d+).*"

    invoke-virtual {v4, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 368
    const-string v2, "^[p|P]/((([z|Z][h|H])|([s|S][p|P]))\\d+).*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 369
    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 370
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 371
    const-class v0, Lcom/xueqiu/android/cube/CubeActivity;

    const-string v4, "extra_cube_symbol"

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v4, v2}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    :cond_34
    move-object v2, v0

    .line 373
    goto/16 :goto_6

    :cond_35
    const-string v2, "^p/create"

    invoke-virtual {v4, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 374
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/xueqiu/android/cube/CreateCubeActivity;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 383
    :cond_36
    const-string v0, "extra_url"

    invoke-virtual {v2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string v0, "extra_is_module"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_37
    move-object v2, v0

    goto/16 :goto_6

    :cond_38
    move-object v0, v2

    goto/16 :goto_4

    :cond_39
    move v0, v1

    goto/16 :goto_3
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    .line 1099
    invoke-static {p0, p1}, Lcom/xueqiu/android/common/q;->b(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2197
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1431
    if-nez v0, :cond_1

    .line 3197
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1434
    if-nez v0, :cond_2

    const-string v0, ".pdf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".PDF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1435
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1436
    const-string v1, "pdf_file_url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1438
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1439
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1452
    :cond_1
    :goto_0
    return-void

    .line 1441
    :cond_2
    invoke-static {p0}, Lcom/xueqiu/android/base/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1444
    :cond_3
    const-string v0, "https://fund.xueqiu.com/ads/redirect"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1445
    const-string v0, "did=%s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/xueqiu/android/base/util/i;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1446
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1447
    const-string v1, "%s&%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1452
    :cond_4
    :goto_1
    invoke-static {p0, p1, v3}, Lcom/xueqiu/android/common/q;->b(Ljava/lang/String;Landroid/content/Context;Z)V

    goto :goto_0

    .line 1449
    :cond_5
    const-string v1, "%s?%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1454
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/WebViewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1455
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1456
    invoke-static {p0}, Lcom/xueqiu/android/base/v;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {p0}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1457
    const-string v2, "extra_url_path"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xueqiu/android/common/q;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1462
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1459
    :cond_7
    const-string v2, "extra_url_path"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 818
    const-string v0, "http://danjuanapp.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://www.danjuanapp.com"

    .line 819
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://danjuanapp.com"

    .line 820
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://www.danjuanapp.com"

    .line 821
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 468
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/base/h5/H5Activity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 469
    const-string v1, "extra_url"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    const-string v1, "extra_is_module"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 471
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 472
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 827
    const/4 v1, 0x0

    .line 828
    invoke-static {p0}, Lcom/xueqiu/android/base/v;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 829
    const-string v2, "\\?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 830
    array-length v3, v2

    if-le v3, v0, :cond_0

    .line 831
    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/xueqiu/android/base/util/az;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 832
    const-string v3, "loginneed"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "true"

    const-string v4, "loginneed"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 837
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 109
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 198
    :goto_0
    return v0

    .line 4069
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 4186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 113
    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/xueqiu/android/common/q;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 115
    check-cast p1, Landroid/app/Activity;

    .line 5152
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    move v0, v1

    .line 116
    goto :goto_0

    :cond_2
    move v0, v2

    .line 118
    goto :goto_0

    .line 122
    :cond_3
    invoke-static {p0}, Lcom/xueqiu/android/base/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "/n/\\S+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 123
    :cond_4
    const-string v0, "\\?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    .line 124
    const/16 v3, 0x2f

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 125
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 126
    const/4 v5, 0x0

    invoke-static {p0, p1, v5}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v5

    .line 127
    if-eqz v5, :cond_5

    .line 128
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 129
    goto :goto_0

    .line 132
    :cond_5
    const-string v5, "^(\\d+)/(cubes|friends|follows|stocks|answers|hot|fund)$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 5645
    const-string v0, "^(\\d+)/(cubes|friends|follows|stocks|answers|hot|fund)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 5646
    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 5647
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5648
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 5649
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 5651
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v3

    new-instance v6, Lcom/xueqiu/android/common/q$1;

    invoke-direct {v6, v0, p1, v4, v5}, Lcom/xueqiu/android/common/q$1;-><init>(Ljava/lang/String;Landroid/content/Context;J)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/xueqiu/android/base/b/ai;->g(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    :cond_6
    move v0, v1

    .line 134
    goto/16 :goto_0

    .line 137
    :cond_7
    const-string v5, "service/p/cubereport"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 5700
    const-string v0, "\\?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5701
    array-length v3, v0

    if-le v3, v1, :cond_8

    .line 5702
    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/xueqiu/android/base/util/az;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 5703
    const-string v3, "symbol"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5704
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-string v6, "symbol"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v6, Lcom/xueqiu/android/common/q$2;

    invoke-direct {v6, p1, p0}, Lcom/xueqiu/android/common/q$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/xueqiu/android/base/b/ai;->c(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    :cond_8
    :goto_1
    move v0, v1

    .line 139
    goto/16 :goto_0

    .line 5731
    :cond_9
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xueqiu/android/common/q;->b(Ljava/lang/String;Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 195
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    move v0, v2

    .line 198
    goto/16 :goto_0

    .line 140
    :cond_b
    :try_start_1
    const-string v5, "talks/item"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 5786
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5787
    array-length v3, v0

    if-le v3, v1, :cond_c

    .line 5788
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    .line 5789
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/common/q$3;

    invoke-direct {v4, p1, p0}, Lcom/xueqiu/android/common/q$3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6704
    iget-object v3, v3, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v3, v0, v4}, Lcom/xueqiu/android/base/b/aj;->a(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    :cond_c
    move v0, v1

    .line 142
    goto/16 :goto_0

    .line 144
    :cond_d
    const-string v5, "xueqiu.com/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0xb

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 145
    const-string v5, "^[p|P]/([z|Z][h|H]\\d+)/holdings.*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 146
    const-string v3, "^[p|P]/([z|Z][h|H]\\d+)/holdings.*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 147
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 149
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/xueqiu/android/cube/RebalanceActivity;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    const-string v4, "extra_cube_symbol"

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v4, "extra_readonly"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    const-string v5, "extra_cube_symbol"

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const/high16 v0, 0x4000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    :cond_e
    move v0, v1

    .line 157
    goto/16 :goto_0

    .line 7084
    :cond_f
    invoke-static {}, Lcom/xueqiu/android/base/h5/f;->a()Lcom/xueqiu/android/base/h5/e;

    move-result-object v0

    .line 7134
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/e;->b:Lcom/xueqiu/android/base/h5/k;

    .line 160
    invoke-virtual {v0, v4}, Lcom/xueqiu/android/base/h5/k;->find(Ljava/lang/String;)Lcom/xueqiu/android/base/h5/g;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 161
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "^/?cube/contract-result\\?(.*)"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 162
    const-string v0, "\\?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 163
    array-length v4, v0

    if-le v4, v1, :cond_10

    .line 164
    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Lcom/xueqiu/android/base/util/az;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 165
    new-instance v5, Landroid/content/Intent;

    const-class v0, Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {v5, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    const-string v6, "extra_cube_symbol"

    const-string v0, "symbol"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const/high16 v0, 0x4000000

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 168
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/xueqiu/android/cube/RebalanceActivity;

    invoke-direct {v6, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    const-string v7, "extra_cube_symbol"

    const-string v0, "symbol"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v0, "extra_readonly"

    const/4 v4, 0x1

    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/xueqiu/android/base/h5/H5Activity;

    invoke-direct {v0, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    const-string v4, "extra_url"

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v6, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    .line 174
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    :cond_10
    move v0, v1

    .line 176
    goto/16 :goto_0

    .line 178
    :cond_11
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, p1, v3}, Lcom/xueqiu/android/common/q;->b(Ljava/lang/String;Landroid/content/Context;Z)V

    move v0, v1

    .line 179
    goto/16 :goto_0

    .line 183
    :cond_12
    const-string v0, "^.*?\\.(jpg|jpeg|png|JPG|JPEG|PNG)$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/xueqiu/android/common/ImageActivity;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    const-string v3, ".jpg!"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, ".jpeg!"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, ".png!"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 187
    :cond_13
    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 189
    :cond_14
    const-string v3, "url"

    invoke-virtual {v0, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 191
    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f040007

    const v3, 0x7f040008

    invoke-virtual {p1, v0, v3}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 192
    goto/16 :goto_0
.end method

.method public static c(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 513
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/stock/InvestmentCalendarActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    const-string v1, "xueqiu.com/"

    .line 515
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 517
    const-string v1, "calendar/\\d+$"

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "calendar/\\d+#.*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 518
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/xueqiu/android/stock/InvestmentCalendarActivity;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 519
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 521
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 523
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 525
    const/4 v0, 0x1

    :try_start_0
    aget-object v0, v2, v0

    .line 526
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 527
    const-string v0, "extra_calendar_date"

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :goto_0
    const/4 v0, 0x0

    aget-object v0, v2, v0

    .line 537
    :cond_1
    const-string v2, "extra_calendar_from_url"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 538
    const-string v2, "extra_calendar_id"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object v0, v1

    .line 567
    :cond_2
    :goto_1
    return-object v0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    const-string v3, "SNBLinkJumpHandler"

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 540
    :cond_3
    const-string v1, "S/\\w+/calendar$"

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "S/\\w+/calendar#.*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 541
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/stock/InvestmentCalendarActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 542
    const-string v1, "S/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    const-string v3, "/calendar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 543
    const-string v3, "extra_calendar_from_url"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 544
    const-string v3, "sotkc_symbol_extra"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    const-string v1, "calendar#"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 548
    :try_start_1
    const-string v1, "#"

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 549
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 550
    const-string v1, "extra_calendar_date"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 551
    :catch_1
    move-exception v1

    .line 552
    const-string v2, "SNBLinkJumpHandler"

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 555
    :cond_5
    const-string v1, "calendar/\\d+/\\d+.*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "S/\\w+/calendar/\\d+.*"

    .line 556
    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 558
    :cond_6
    const-string v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 559
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "#"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 564
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xueqiu/android/stock/InvestmentCalEventAddActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 565
    const-string v2, "extra_push_event_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    goto/16 :goto_1

    .line 561
    :cond_7
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
