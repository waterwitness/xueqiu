.class final Lcom/xueqiu/android/base/util/aa$3;
.super Ljava/lang/Object;
.source "NotificationsUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;Ljava/util/List;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/xueqiu/android/message/model/Talk;

.field final synthetic d:Lcom/xueqiu/android/message/model/Message;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/xueqiu/android/message/model/Talk;Lcom/xueqiu/android/message/model/Message;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 220
    iput-object p1, p0, Lcom/xueqiu/android/base/util/aa$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/aa$3;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcom/xueqiu/android/base/util/aa$3;->c:Lcom/xueqiu/android/message/model/Talk;

    iput-object p4, p0, Lcom/xueqiu/android/base/util/aa$3;->d:Lcom/xueqiu/android/message/model/Message;

    iput-object p5, p0, Lcom/xueqiu/android/base/util/aa$3;->e:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/base/util/aa$3;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 223
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/xueqiu/android/base/util/aa$3;->a:Landroid/content/Context;

    const-class v1, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    const/high16 v0, 0x24000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 225
    const-string v0, "extra_notification"

    const/4 v1, 0x6

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/base/util/aa$3;->a:Landroid/content/Context;

    const-class v3, Lcom/xueqiu/android/message/RecentTalkActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    const/high16 v1, 0x4000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 230
    new-array v1, v7, [Landroid/content/Intent;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    iget-object v0, p0, Lcom/xueqiu/android/base/util/aa$3;->b:Landroid/content/Intent;

    aput-object v0, v1, v6

    .line 231
    iget-object v0, p0, Lcom/xueqiu/android/base/util/aa$3;->c:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v6

    const-wide/32 v8, 0x64410bbb

    cmp-long v0, v6, v8

    if-nez v0, :cond_0

    .line 233
    :try_start_0
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v3, p0, Lcom/xueqiu/android/base/util/aa$3;->d:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v3}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 234
    const-string v3, "url"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    const-string v3, "url"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 236
    const-string v3, "\\?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    .line 237
    const-string v3, "xueqiu.com/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 238
    const-string v3, "^[p|P]/((([z|Z][h|H])|([s|S][p|P]))\\d+).*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 239
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    iget-object v3, p0, Lcom/xueqiu/android/base/util/aa$3;->a:Landroid/content/Context;

    const-class v5, Lcom/xueqiu/android/cube/CubeActivity;

    const-string v6, "extra_cube_symbol"

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v5, v6, v0}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v3

    .line 242
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v2, v0, v5

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/xueqiu/android/base/util/aa$3;->b:Landroid/content/Intent;

    aput-object v5, v0, v2

    const/4 v2, 0x2

    aput-object v3, v0, v2
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    .line 249
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/base/util/aa$3;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/xueqiu/android/base/util/aa$3;->c:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    long-to-int v2, v2

    const/high16 v3, 0x8000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 250
    iget-object v0, p0, Lcom/xueqiu/android/base/util/aa$3;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/xueqiu/android/base/util/aa$3;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/xueqiu/android/base/util/aa$3;->c:Lcom/xueqiu/android/message/model/Talk;

    invoke-virtual {v3}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v6

    long-to-int v3, v6

    iget-boolean v5, p0, Lcom/xueqiu/android/base/util/aa$3;->f:Z

    invoke-static/range {v0 .. v5}, Lcom/xueqiu/android/base/util/aa;->a(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;IZZ)V

    .line 251
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    const-string v2, "NotificationsUtil"

    const-string v3, "json syntax error."

    invoke-static {v2, v3, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
