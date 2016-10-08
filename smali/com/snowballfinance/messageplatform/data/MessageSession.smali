.class public Lcom/snowballfinance/messageplatform/data/MessageSession;
.super Ljava/lang/Object;
.source "MessageSession.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J = -0x57e5f2c590a90135L


# instance fields
.field private activeFlag:Ljava/lang/Boolean;

.field private collapsed:Ljava/lang/Boolean;

.field private notificationFlag:Ljava/lang/Boolean;

.field private ownerId:Ljava/lang/Long;

.field private ownerRef:Lcom/snowballfinance/messageplatform/data/User;

.field private stickyFlag:Ljava/lang/Boolean;

.field private summary:Ljava/lang/String;

.field private targetGroup:Ljava/lang/Boolean;

.field private targetGroupRef:Lcom/snowballfinance/messageplatform/data/Group;

.field private targetId:Ljava/lang/Long;

.field private targetUserRef:Lcom/snowballfinance/messageplatform/data/User;

.field private timestamp:Ljava/lang/Long;

.field private unreadCount:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/snowballfinance/messageplatform/data/MessageSession;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/snowballfinance/messageplatform/data/MessageSession;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeMessageSession(Lcom/snowballfinance/messageplatform/a/a/d;)Lcom/snowballfinance/messageplatform/data/MessageSession;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 249
    new-instance v3, Lcom/snowballfinance/messageplatform/data/MessageSession;

    invoke-direct {v3}, Lcom/snowballfinance/messageplatform/data/MessageSession;-><init>()V

    .line 250
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->setOwnerId(Ljava/lang/Long;)V

    .line 251
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->setTargetId(Ljava/lang/Long;)V

    .line 252
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->a()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->setTargetGroup(Ljava/lang/Boolean;)V

    .line 253
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->setUnreadCount(Ljava/lang/Integer;)V

    .line 254
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->setSummary(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->setTimestamp(Ljava/lang/Long;)V

    .line 256
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->a()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->setStickyFlag(Ljava/lang/Boolean;)V

    .line 257
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->a()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->setNotificationFlag(Ljava/lang/Boolean;)V

    .line 258
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->a()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->setActiveFlag(Ljava/lang/Boolean;)V

    .line 259
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->a()I

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->setCollapsed(Ljava/lang/Boolean;)V

    .line 260
    return-object v3

    :cond_0
    move v0, v2

    .line 252
    goto :goto_0

    :cond_1
    move v0, v2

    .line 256
    goto :goto_1

    :cond_2
    move v0, v2

    .line 257
    goto :goto_2

    :cond_3
    move v0, v2

    .line 258
    goto :goto_3

    :cond_4
    move v1, v2

    .line 259
    goto :goto_4
.end method


# virtual methods
.method public clone()Lcom/snowballfinance/messageplatform/data/MessageSession;
    .locals 3

    .prologue
    .line 223
    :try_start_0
    new-instance v0, Lcom/snowballfinance/messageplatform/a/a/e;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/a/e;-><init>()V

    .line 224
    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->encodeMessageSession(Lcom/snowballfinance/messageplatform/a/a/e;)V

    .line 225
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/a/a/e;->toByteArray()[B

    move-result-object v1

    .line 226
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/a/a/e;->close()V

    .line 227
    new-instance v0, Lcom/snowballfinance/messageplatform/a/a/d;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Lcom/snowballfinance/messageplatform/a/a/d;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->decodeMessageSession(Lcom/snowballfinance/messageplatform/a/a/d;)Lcom/snowballfinance/messageplatform/data/MessageSession;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/MessageSession;->clone()Lcom/snowballfinance/messageplatform/data/MessageSession;

    move-result-object v0

    return-object v0
.end method

.method public description()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "owner="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->ownerId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetGroup:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->activeFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|notification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->notificationFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|sticky="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->stickyFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|collapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->collapsed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|unread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->unreadCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeMessageSession(Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 234
    sget-boolean v0, Lcom/snowballfinance/messageplatform/data/MessageSession;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->ownerId:Ljava/lang/Long;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 235
    :cond_0
    sget-boolean v0, Lcom/snowballfinance/messageplatform/data/MessageSession;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetId:Ljava/lang/Long;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->ownerId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 237
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 238
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetGroup:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetGroup:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(I)V

    .line 239
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->unreadCount:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->unreadCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->b(I)V

    .line 240
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->summary:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->summary:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_3
    invoke-virtual {p1, v4, v5}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 242
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->stickyFlag:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->stickyFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(I)V

    .line 243
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->notificationFlag:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->notificationFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(I)V

    .line 244
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->activeFlag:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->activeFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(I)V

    .line 245
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->collapsed:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->collapsed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_7
    invoke-virtual {p1, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(I)V

    .line 246
    return-void

    :cond_2
    move v0, v2

    .line 238
    goto :goto_0

    :cond_3
    move v0, v2

    .line 239
    goto :goto_1

    .line 240
    :cond_4
    const-string v0, ""

    goto :goto_2

    .line 241
    :cond_5
    const-wide/16 v4, 0x0

    goto :goto_3

    :cond_6
    move v0, v2

    .line 242
    goto :goto_4

    :cond_7
    move v0, v2

    .line 243
    goto :goto_5

    :cond_8
    move v0, v2

    .line 244
    goto :goto_6

    :cond_9
    move v1, v2

    .line 245
    goto :goto_7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 185
    if-ne p0, p1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 188
    :cond_3
    check-cast p1, Lcom/snowballfinance/messageplatform/data/MessageSession;

    .line 190
    iget-object v2, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->ownerId:Ljava/lang/Long;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->ownerId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/snowballfinance/messageplatform/data/MessageSession;->ownerId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/snowballfinance/messageplatform/data/MessageSession;->ownerId:Ljava/lang/Long;

    if-nez v2, :cond_4

    .line 191
    :cond_6
    iget-object v2, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetGroup:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetGroup:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetGroup:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetGroup:Ljava/lang/Boolean;

    if-nez v2, :cond_7

    .line 192
    :cond_9
    iget-object v2, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetId:Ljava/lang/Long;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p1, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetId:Ljava/lang/Long;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getActiveFlag()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->activeFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCollapsed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->collapsed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNotificationFlag()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->notificationFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->ownerId:Ljava/lang/Long;

    return-object v0
.end method

.method public getOwnerRef()Lcom/snowballfinance/messageplatform/data/User;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->ownerRef:Lcom/snowballfinance/messageplatform/data/User;

    return-object v0
.end method

.method public getStickyFlag()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->stickyFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetGroup()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetGroup:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTargetGroupRef()Lcom/snowballfinance/messageplatform/data/Group;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetGroupRef:Lcom/snowballfinance/messageplatform/data/Group;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetId:Ljava/lang/Long;

    return-object v0
.end method

.method public getTargetUserRef()Lcom/snowballfinance/messageplatform/data/User;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetUserRef:Lcom/snowballfinance/messageplatform/data/User;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public getUnreadCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->unreadCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 200
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetGroup:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetGroup:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 201
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->ownerId:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->ownerId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 202
    return v0

    :cond_1
    move v0, v1

    .line 199
    goto :goto_0

    :cond_2
    move v0, v1

    .line 200
    goto :goto_1
.end method

.method public setActiveFlag(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->activeFlag:Ljava/lang/Boolean;

    .line 172
    return-void
.end method

.method public setCollapsed(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->collapsed:Ljava/lang/Boolean;

    .line 108
    return-void
.end method

.method public setNotificationFlag(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->notificationFlag:Ljava/lang/Boolean;

    .line 180
    return-void
.end method

.method public setOwnerId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->ownerId:Ljava/lang/Long;

    .line 124
    return-void
.end method

.method public setOwnerRef(Lcom/snowballfinance/messageplatform/data/User;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->ownerRef:Lcom/snowballfinance/messageplatform/data/User;

    .line 84
    return-void
.end method

.method public setStickyFlag(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->stickyFlag:Ljava/lang/Boolean;

    .line 140
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->summary:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setTargetGroup(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetGroup:Ljava/lang/Boolean;

    .line 164
    return-void
.end method

.method public setTargetGroupRef(Lcom/snowballfinance/messageplatform/data/Group;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetGroupRef:Lcom/snowballfinance/messageplatform/data/Group;

    .line 100
    return-void
.end method

.method public setTargetId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetId:Ljava/lang/Long;

    .line 116
    return-void
.end method

.method public setTargetUserRef(Lcom/snowballfinance/messageplatform/data/User;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetUserRef:Lcom/snowballfinance/messageplatform/data/User;

    .line 92
    return-void
.end method

.method public setTimestamp(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->timestamp:Ljava/lang/Long;

    .line 156
    return-void
.end method

.method public setUnreadCount(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->unreadCount:Ljava/lang/Integer;

    .line 132
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MessageSession{targetId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->targetGroup:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ownerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->ownerId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unreadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->unreadCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stickyFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->stickyFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notificationFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->notificationFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", summary=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->activeFlag:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", collapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/MessageSession;->collapsed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
