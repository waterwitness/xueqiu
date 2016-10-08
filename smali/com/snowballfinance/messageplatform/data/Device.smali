.class public Lcom/snowballfinance/messageplatform/data/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ANDROID:Ljava/lang/Integer;

.field public static final INTERNAL:Ljava/lang/Integer;

.field public static final IOS:Ljava/lang/Integer;

.field public static final PLATFORM_CLIENT:Ljava/lang/Integer;

.field public static final REQUEST:Ljava/lang/Integer;

.field public static final WEBSITE:Ljava/lang/Integer;

.field public static final WEBSITE_VOLATILE:Ljava/lang/Integer;

.field private static final serialVersionUID:J = -0x5a5d915b3bbbbb90L


# instance fields
.field private channel:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private lastConnectedTime:Ljava/lang/Long;

.field private platformId:Ljava/lang/String;

.field private primary:Ljava/lang/Boolean;

.field private proxyId:Ljava/lang/String;

.field private userId:Ljava/lang/Long;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/data/Device;->ANDROID:Ljava/lang/Integer;

    .line 25
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/data/Device;->IOS:Ljava/lang/Integer;

    .line 26
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/data/Device;->WEBSITE:Ljava/lang/Integer;

    .line 27
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/data/Device;->WEBSITE_VOLATILE:Ljava/lang/Integer;

    .line 28
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/data/Device;->REQUEST:Ljava/lang/Integer;

    .line 29
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/data/Device;->PLATFORM_CLIENT:Ljava/lang/Integer;

    .line 30
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/messageplatform/data/Device;->INTERNAL:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeDevice(Lcom/snowballfinance/messageplatform/a/a/d;)Lcom/snowballfinance/messageplatform/data/Device;
    .locals 6

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->e()Z

    move-result v0

    .line 323
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->e()Z

    move-result v1

    .line 324
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->e()Z

    move-result v2

    .line 325
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->e()Z

    move-result v3

    .line 326
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->e()Z

    move-result v4

    .line 1173
    const/4 v5, 0x0

    iput v5, p0, Lcom/snowballfinance/messageplatform/a/a/d;->b:I

    .line 328
    new-instance v5, Lcom/snowballfinance/messageplatform/data/Device;

    invoke-direct {v5}, Lcom/snowballfinance/messageplatform/data/Device;-><init>()V

    .line 329
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/snowballfinance/messageplatform/data/Device;->setDeviceId(Ljava/lang/String;)V

    .line 332
    :cond_0
    if-eqz v1, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/snowballfinance/messageplatform/data/Device;->setPlatformId(Ljava/lang/String;)V

    .line 335
    :cond_1
    if-eqz v2, :cond_2

    .line 336
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/snowballfinance/messageplatform/data/Device;->setProxyId(Ljava/lang/String;)V

    .line 338
    :cond_2
    if-eqz v3, :cond_3

    .line 339
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/snowballfinance/messageplatform/data/Device;->setUserId(Ljava/lang/Long;)V

    .line 341
    :cond_3
    if-eqz v4, :cond_4

    .line 342
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/snowballfinance/messageplatform/data/Device;->setLastConnectedTime(Ljava/lang/Long;)V

    .line 344
    :cond_4
    return-object v5
.end method

.method public static internalDevice(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/data/Device;
    .locals 4

    .prologue
    .line 36
    new-instance v0, Lcom/snowballfinance/messageplatform/data/Device;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/data/Device;-><init>()V

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/snowballfinance/messageplatform/data/Device;->INTERNAL:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "INTERNAL_DEVICE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Device;->setDeviceId(Ljava/lang/String;)V

    .line 38
    sget-object v1, Lcom/snowballfinance/messageplatform/data/Predef;->SYSTEM_USER_ID:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Device;->setUserId(Ljava/lang/Long;)V

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Device;->setLastConnectedTime(Ljava/lang/Long;)V

    .line 40
    invoke-virtual {v0, p0}, Lcom/snowballfinance/messageplatform/data/Device;->setPlatformId(Ljava/lang/String;)V

    .line 41
    return-object v0
.end method


# virtual methods
.method public androidDevice()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->deviceId:Ljava/lang/String;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/Device;->ANDROID:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/snowballfinance/messageplatform/data/Device;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Lcom/snowballfinance/messageplatform/data/Device;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/data/Device;-><init>()V

    .line 174
    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Device;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Device;->setChannel(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Device;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Device;->setDeviceId(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Device;->lastConnectedTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Device;->setLastConnectedTime(Ljava/lang/Long;)V

    .line 177
    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Device;->platformId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Device;->setPlatformId(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Device;->primary:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Device;->setPrimary(Ljava/lang/Boolean;)V

    .line 179
    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Device;->proxyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Device;->setProxyId(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Device;->userId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Device;->setUserId(Ljava/lang/Long;)V

    .line 181
    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Device;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/Device;->setVersion(Ljava/lang/String;)V

    .line 182
    return-object v0
.end method

.method public debugDevice()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->deviceId:Ljava/lang/String;

    const-string v1, "DEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public encodeDevice(Lcom/snowballfinance/messageplatform/a/a/e;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 287
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_5

    move v0, v1

    .line 288
    :goto_0
    iget-object v3, p0, Lcom/snowballfinance/messageplatform/data/Device;->platformId:Ljava/lang/String;

    if-eqz v3, :cond_6

    move v3, v1

    .line 289
    :goto_1
    iget-object v4, p0, Lcom/snowballfinance/messageplatform/data/Device;->proxyId:Ljava/lang/String;

    if-eqz v4, :cond_7

    move v4, v1

    .line 290
    :goto_2
    iget-object v5, p0, Lcom/snowballfinance/messageplatform/data/Device;->userId:Ljava/lang/Long;

    if-eqz v5, :cond_8

    move v5, v1

    .line 291
    :goto_3
    iget-object v6, p0, Lcom/snowballfinance/messageplatform/data/Device;->lastConnectedTime:Ljava/lang/Long;

    if-eqz v6, :cond_9

    .line 292
    :goto_4
    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Z)V

    .line 293
    invoke-virtual {p1, v3}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Z)V

    .line 294
    invoke-virtual {p1, v4}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Z)V

    .line 295
    invoke-virtual {p1, v5}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Z)V

    .line 296
    invoke-virtual {p1, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Z)V

    .line 297
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/a/a/e;->a()V

    .line 298
    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Ljava/lang/String;)V

    .line 301
    :cond_0
    if-eqz v3, :cond_1

    .line 302
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->platformId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Ljava/lang/String;)V

    .line 304
    :cond_1
    if-eqz v4, :cond_2

    .line 305
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->proxyId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/snowballfinance/messageplatform/a/a/e;->a(Ljava/lang/String;)V

    .line 307
    :cond_2
    if-eqz v5, :cond_3

    .line 308
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->userId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 310
    :cond_3
    if-eqz v1, :cond_4

    .line 311
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->lastConnectedTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snowballfinance/messageplatform/a/a/e;->a(J)V

    .line 313
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 287
    goto :goto_0

    :cond_6
    move v3, v2

    .line 288
    goto :goto_1

    :cond_7
    move v4, v2

    .line 289
    goto :goto_2

    :cond_8
    move v5, v2

    .line 290
    goto :goto_3

    :cond_9
    move v1, v2

    .line 291
    goto :goto_4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 245
    if-ne p0, p1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 246
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

    .line 248
    :cond_3
    check-cast p1, Lcom/snowballfinance/messageplatform/data/Device;

    .line 250
    iget-object v2, p0, Lcom/snowballfinance/messageplatform/data/Device;->deviceId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/snowballfinance/messageplatform/data/Device;->deviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/snowballfinance/messageplatform/data/Device;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/snowballfinance/messageplatform/data/Device;->deviceId:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public expired()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Device;->internalDevice()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->lastConnectedTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/snowballfinance/messageplatform/data/Device;->lastConnectedTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide v2, 0x9a7ec800L

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastConnectedTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->lastConnectedTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getPlatformId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->platformId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->primary:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getProxyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->proxyId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->deviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 264
    :goto_0
    return v0

    .line 260
    :cond_0
    const/4 v0, 0x0

    .line 264
    goto :goto_0
.end method

.method public iOSDevice()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->deviceId:Ljava/lang/String;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/Device;->IOS:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public internalDevice()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->deviceId:Ljava/lang/String;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/Device;->INTERNAL:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snowballfinance/messageplatform/data/Predef;->SYSTEM_USER_ID:Ljava/lang/Long;

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Device;->userId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public platformClientDevice()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->deviceId:Ljava/lang/String;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/Device;->PLATFORM_CLIENT:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public requestDevice()Z
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->deviceId:Ljava/lang/String;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/Device;->REQUEST:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Device;->channel:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Device;->deviceId:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setLastConnectedTime(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Device;->lastConnectedTime:Ljava/lang/Long;

    .line 125
    return-void
.end method

.method public setPlatformId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Device;->platformId:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setPrimary(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Device;->primary:Ljava/lang/Boolean;

    .line 93
    return-void
.end method

.method public setProxyId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Device;->proxyId:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Device;->userId:Ljava/lang/Long;

    .line 133
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Device;->version:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public supportJsonView()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Device;->platformClientDevice()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Device;->requestDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Device;->getVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Device;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_3

    .line 160
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Device;->androidDevice()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 163
    const-string v2, "4.4.3"

    invoke-static {v2}, Lcom/snowballfinance/messageplatform/b/f;->a(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/b/f;

    move-result-object v2

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Device;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snowballfinance/messageplatform/b/f;->a(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/b/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/snowballfinance/messageplatform/b/f;->a(Lcom/snowballfinance/messageplatform/b/f;)I

    move-result v2

    if-gtz v2, :cond_4

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 164
    :cond_5
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Device;->iOSDevice()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 165
    const-string v2, "4.4.2"

    invoke-static {v2}, Lcom/snowballfinance/messageplatform/b/f;->a(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/b/f;

    move-result-object v2

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Device;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snowballfinance/messageplatform/b/f;->a(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/b/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/snowballfinance/messageplatform/b/f;->a(Lcom/snowballfinance/messageplatform/b/f;)I

    move-result v2

    if-gtz v2, :cond_6

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2

    .line 166
    :cond_7
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Device;->webDevice()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Device;->volatileDevice()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 167
    :cond_8
    const-string v2, "1.1.0"

    invoke-static {v2}, Lcom/snowballfinance/messageplatform/b/f;->a(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/b/f;

    move-result-object v2

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/Device;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snowballfinance/messageplatform/b/f;->a(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/b/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/snowballfinance/messageplatform/b/f;->a(Lcom/snowballfinance/messageplatform/b/f;)I

    move-result v2

    if-gtz v2, :cond_9

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_3

    .line 169
    :cond_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device{deviceId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Device;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", platformId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Device;->platformId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxyId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Device;->proxyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Device;->userId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastConnectedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Device;->lastConnectedTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Device;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Device;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/Device;->primary:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public volatileDevice()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->deviceId:Ljava/lang/String;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/Device;->WEBSITE_VOLATILE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public webDevice()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->deviceId:Ljava/lang/String;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/Device;->WEBSITE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Device;->deviceId:Ljava/lang/String;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/Device;->WEBSITE_VOLATILE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
