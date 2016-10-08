.class public final Lcom/bairuitech/a/a;
.super Ljava/lang/Object;
.source "BussinessCenter.java"


# static fields
.field public static a:Lcom/bairuitech/anychat/AnyChatCoreSDK;

.field public static b:Lcom/bairuitech/a/b;

.field public static c:Landroid/app/Activity;

.field public static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static f:I

.field public static g:Z

.field public static h:Ljava/lang/String;

.field private static i:Lcom/bairuitech/a/a;


# instance fields
.field private j:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bairuitech/a/a;->g:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1045
    new-instance v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-direct {v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;-><init>()V

    sput-object v0, Lcom/bairuitech/a/a;->a:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    .line 1046
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bairuitech/a/a;->d:Ljava/util/ArrayList;

    .line 1047
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bairuitech/a/a;->e:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method public static a()Lcom/bairuitech/a/a;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/bairuitech/a/a;->i:Lcom/bairuitech/a/a;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/bairuitech/a/a;

    invoke-direct {v0}, Lcom/bairuitech/a/a;-><init>()V

    sput-object v0, Lcom/bairuitech/a/a;->i:Lcom/bairuitech/a/a;

    .line 41
    :cond_0
    sget-object v0, Lcom/bairuitech/a/a;->i:Lcom/bairuitech/a/a;

    return-object v0
.end method

.method public static a(ILjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 142
    sget-object v0, Lcom/bairuitech/a/a;->a:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    const/4 v1, 0x1

    move v2, p0

    move v4, v3

    move v5, v3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->VideoCallControl(IIIIILjava/lang/String;)I

    .line 143
    return-void
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    sput-object v0, Lcom/bairuitech/a/a;->b:Lcom/bairuitech/a/b;

    .line 216
    return-void
.end method


# virtual methods
.method public final a(II)Ljava/lang/String;
    .locals 4

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    packed-switch p2, :pswitch_data_0

    .line 190
    :goto_0
    if-eqz v0, :cond_1

    .line 191
    sget-object v1, Lcom/bairuitech/a/a;->c:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bairuitech/b/a;->a(Ljava/lang/String;Landroid/app/Activity;)V

    .line 193
    sget-boolean v1, Lcom/bairuitech/a/a;->g:Z

    if-eqz v1, :cond_0

    .line 194
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 195
    const-string v2, "USERID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    sget-object v1, Lcom/bairuitech/a/a;->c:Landroid/app/Activity;

    const-string v2, "com.bairuitech.callcenter.backcancelsession"

    .line 2047
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2050
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2051
    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/bairuitech/a/a;->b()V

    .line 200
    :cond_1
    return-object v0

    .line 168
    :pswitch_0
    sget-object v0, Lcom/bairuitech/a/a;->c:Landroid/app/Activity;

    sget-object v1, Lcom/bairuitech/a/a;->c:Landroid/app/Activity;

    const-string v2, "str_returncode_bussiness"

    invoke-static {v1, v2}, Lcom/b/a/a/f;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 171
    :pswitch_1
    sget-object v0, Lcom/bairuitech/a/a;->c:Landroid/app/Activity;

    sget-object v1, Lcom/bairuitech/a/a;->c:Landroid/app/Activity;

    const-string v2, "str_returncode_requestrefuse"

    invoke-static {v1, v2}, Lcom/b/a/a/f;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 174
    :pswitch_2
    sget-object v0, Lcom/bairuitech/a/a;->c:Landroid/app/Activity;

    sget-object v1, Lcom/bairuitech/a/a;->c:Landroid/app/Activity;

    const-string v2, "str_returncode_offline"

    invoke-static {v1, v2}, Lcom/b/a/a/f;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 177
    :pswitch_3
    sget-object v0, Lcom/bairuitech/a/a;->c:Landroid/app/Activity;

    sget-object v1, Lcom/bairuitech/a/a;->c:Landroid/app/Activity;

    const-string v2, "str_returncode_requestcancel"

    invoke-static {v1, v2}, Lcom/b/a/a/f;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 180
    :pswitch_4
    sget-object v0, Lcom/bairuitech/a/a;->c:Landroid/app/Activity;

    sget-object v1, Lcom/bairuitech/a/a;->c:Landroid/app/Activity;

    const-string v2, "str_returncode_timeout"

    invoke-static {v1, v2}, Lcom/b/a/a/f;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 183
    :pswitch_5
    sget-object v0, Lcom/bairuitech/a/a;->c:Landroid/app/Activity;

    sget-object v1, Lcom/bairuitech/a/a;->c:Landroid/app/Activity;

    const-string v2, "str_returncode_disconnect"

    invoke-static {v1, v2}, Lcom/b/a/a/f;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x18705
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bairuitech/a/a;->j:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 76
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bairuitech/a/a;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 77
    iget-object v0, p0, Lcom/bairuitech/a/a;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 78
    iget-object v0, p0, Lcom/bairuitech/a/a;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bairuitech/a/a;->j:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    const-string v0, "media-stop"

    const-string v1, "er"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
