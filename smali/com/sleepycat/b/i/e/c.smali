.class public final Lcom/sleepycat/b/i/e/c;
.super Ljava/lang/Object;
.source "FeederReplicaHandshake.java"


# static fields
.field private static g:I


# instance fields
.field public final a:Lcom/sleepycat/b/i/c/b/aa;

.field public final b:Lcom/sleepycat/b/i/h/o;

.field public final c:Lcom/sleepycat/b/i/c/b/x;

.field public d:Lcom/sleepycat/b/i/c/b/x;

.field public volatile e:Lcom/sleepycat/b/i/e/am;

.field public final f:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/sleepycat/b/i/e/c;->g:I

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/i/h/o;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/e/c;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 74
    iput-object p1, p0, Lcom/sleepycat/b/i/e/c;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 75
    iput-object p2, p0, Lcom/sleepycat/b/i/e/c;->b:Lcom/sleepycat/b/i/h/o;

    .line 1454
    iget-object v0, p1, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 76
    iput-object v0, p0, Lcom/sleepycat/b/i/e/c;->c:Lcom/sleepycat/b/i/c/b/x;

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/e/c;->f:Ljava/util/logging/Logger;

    .line 78
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 92
    sget v0, Lcom/sleepycat/b/i/e/c;->g:I

    if-eqz v0, :cond_0

    sget v0, Lcom/sleepycat/b/i/e/c;->g:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/i/e/t;)V
    .locals 3

    .prologue
    .line 215
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/e/c;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/o;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    const-class v1, Lcom/sleepycat/b/i/e/aq;

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/b/i/e/t;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/e/aq;

    .line 217
    new-instance v1, Lcom/sleepycat/b/i/e/ar;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1, v0}, Lcom/sleepycat/b/i/e/ar;-><init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/i/e/aq;)V

    iget-object v2, p0, Lcom/sleepycat/b/i/e/c;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {p1, v1, v2}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 2446
    iget-boolean v0, v0, Lcom/sleepycat/b/i/e/aq;->a:Z

    .line 218
    if-eqz v0, :cond_0

    .line 219
    return-void
.end method

.method public final b(Lcom/sleepycat/b/i/e/t;)V
    .locals 5

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sleepycat/b/i/e/c;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/i/e/t;->a(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/e/ai;

    check-cast v0, Lcom/sleepycat/b/i/e/ai;

    .line 237
    iget-object v1, p0, Lcom/sleepycat/b/i/e/c;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 3421
    iget-object v2, v1, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    .line 3666
    iget-object v1, v0, Lcom/sleepycat/b/i/e/ai;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 4087
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 238
    invoke-virtual {v2, v1}, Lcom/sleepycat/b/i/c/t;->b(Ljava/lang/String;)Lcom/sleepycat/b/i/c/am;

    move-result-object v1

    .line 4670
    :try_start_0
    iget-object v3, v0, Lcom/sleepycat/b/i/e/ai;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 5099
    iget v3, v3, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 242
    iget-object v4, p0, Lcom/sleepycat/b/i/e/c;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 6099
    iget v4, v4, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 242
    if-eq v3, v4, :cond_0

    .line 243
    new-instance v1, Lcom/sleepycat/b/i/c/b/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The replica node ID sent during protocol negotiation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/e/c;->d:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " differs from the one sent in the MembershipInfo request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6670
    iget-object v0, v0, Lcom/sleepycat/b/i/e/ai;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 7099
    iget v0, v0, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 243
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/b/i/c/b/i;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/sleepycat/b/i/c/b/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    iget-object v1, p0, Lcom/sleepycat/b/i/e/c;->f:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/e/c;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 32520
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 278
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/i;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 280
    new-instance v1, Lcom/sleepycat/b/i/e/ak;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/i;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/sleepycat/b/i/e/ak;-><init>(Lcom/sleepycat/b/i/e/t;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sleepycat/b/i/e/c;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {p1, v1, v2}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 282
    throw v0

    .line 250
    :cond_0
    if-eqz v1, :cond_1

    .line 7174
    :try_start_1
    iget-boolean v3, v1, Lcom/sleepycat/b/i/c/am;->c:Z
    :try_end_1
    .catch Lcom/sleepycat/b/i/c/b/i; {:try_start_1 .. :try_end_1} :catch_0

    .line 250
    if-nez v3, :cond_2

    .line 253
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/b/i/e/c;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 7410
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->j:Lcom/sleepycat/b/i/c/p;

    .line 8383
    new-instance v3, Lcom/sleepycat/b/i/c/am;

    invoke-direct {v3, v0}, Lcom/sleepycat/b/i/c/am;-><init>(Lcom/sleepycat/b/i/e/ai;)V

    invoke-virtual {v1, v3}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/i/c/am;)V

    .line 254
    iget-object v1, p0, Lcom/sleepycat/b/i/e/c;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 8421
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    .line 8666
    iget-object v3, v0, Lcom/sleepycat/b/i/e/ai;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 9087
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 254
    invoke-virtual {v1, v3}, Lcom/sleepycat/b/i/c/t;->a(Ljava/lang/String;)Lcom/sleepycat/b/i/c/am;

    move-result-object v1

    .line 256
    if-nez v1, :cond_3

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Node: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9678
    iget-object v0, v0, Lcom/sleepycat/b/i/e/ai;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 257
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Lcom/sleepycat/b/i/g; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sleepycat/b/i/e; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sleepycat/b/i/c/v; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/sleepycat/b/i/c/b/i; {:try_start_2 .. :try_end_2} :catch_0

    .line 261
    :catch_1
    move-exception v0

    .line 262
    :try_start_3
    new-instance v1, Lcom/sleepycat/b/i/c/b/i;

    invoke-direct {v1, v0}, Lcom/sleepycat/b/i/c/b/i;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 263
    :catch_2
    move-exception v0

    .line 264
    new-instance v1, Lcom/sleepycat/b/i/c/b/i;

    invoke-direct {v1, v0}, Lcom/sleepycat/b/i/c/b/i;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 265
    :catch_3
    move-exception v0

    .line 266
    new-instance v1, Lcom/sleepycat/b/i/c/b/i;

    invoke-direct {v1, v0}, Lcom/sleepycat/b/i/c/b/i;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 10178
    :cond_2
    iget-boolean v3, v1, Lcom/sleepycat/b/i/c/am;->d:Z

    .line 268
    if-eqz v3, :cond_3

    .line 269
    new-instance v1, Lcom/sleepycat/b/i/c/b/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Node: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10678
    iget-object v0, v0, Lcom/sleepycat/b/i/e/ai;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 269
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is no longer a member of the group. It was explicitly removed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/b/i/c/b/i;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11689
    :cond_3
    iget-boolean v3, v0, Lcom/sleepycat/b/i/e/ai;->h:Z

    .line 11306
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sleepycat/b/i/e/c;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 12520
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 11306
    invoke-virtual {v3}, Lcom/sleepycat/b/i/c/aj;->ah()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11308
    new-instance v1, Lcom/sleepycat/b/i/c/b/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Conflicting Primary designations. Feeder node: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/e/c;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 13441
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 14087
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 11308
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and replica node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 14666
    iget-object v0, v0, Lcom/sleepycat/b/i/e/ai;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 15087
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 11308
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " cannot simultaneously be designated primaries"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/b/i/c/b/i;-><init>(Ljava/lang/String;)V

    throw v1

    .line 15658
    :cond_4
    iget-object v3, v0, Lcom/sleepycat/b/i/e/ai;->a:Ljava/lang/String;

    .line 15760
    iget-object v4, v2, Lcom/sleepycat/b/i/c/t;->a:Ljava/lang/String;

    .line 11315
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 11316
    new-instance v1, Lcom/sleepycat/b/i/c/b/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The feeder belongs to the group: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16760
    iget-object v2, v2, Lcom/sleepycat/b/i/c/t;->a:Ljava/lang/String;

    .line 11316
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but replica id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/e/c;->d:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " belongs to the group: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 17658
    iget-object v0, v0, Lcom/sleepycat/b/i/e/ai;->a:Ljava/lang/String;

    .line 11316
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/b/i/c/b/i;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17662
    :cond_5
    iget-object v3, v0, Lcom/sleepycat/b/i/e/ai;->c:Ljava/util/UUID;

    .line 11322
    invoke-static {v3}, Lcom/sleepycat/b/i/c/t;->a(Ljava/util/UUID;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 18662
    iget-object v3, v0, Lcom/sleepycat/b/i/e/ai;->c:Ljava/util/UUID;

    .line 19304
    iget-object v4, v2, Lcom/sleepycat/b/i/c/t;->b:Ljava/util/UUID;

    .line 11322
    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 11324
    new-instance v1, Lcom/sleepycat/b/i/c/b/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The environments have the same name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19760
    iget-object v4, v2, Lcom/sleepycat/b/i/c/t;->a:Ljava/lang/String;

    .line 11324
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but represent different environment instances. The environment at the master has UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 20304
    iget-object v2, v2, Lcom/sleepycat/b/i/c/t;->b:Ljava/util/UUID;

    .line 11324
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", while the replica "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/e/c;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 21087
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 11324
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 21662
    iget-object v0, v0, Lcom/sleepycat/b/i/e/ai;->c:Ljava/util/UUID;

    .line 11324
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/b/i/c/b/i;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22674
    :cond_6
    iget-object v3, v0, Lcom/sleepycat/b/i/e/ai;->e:Ljava/lang/String;

    .line 23215
    iget-object v4, v1, Lcom/sleepycat/b/i/c/am;->e:Ljava/lang/String;

    .line 22345
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 22346
    new-instance v2, Lcom/sleepycat/b/i/c/b/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Conflicting hostnames for replica id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/e/c;->d:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Feeder thinks it is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 24215
    iget-object v1, v1, Lcom/sleepycat/b/i/c/am;->e:Ljava/lang/String;

    .line 22346
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Replica is configured to use: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 24674
    iget-object v0, v0, Lcom/sleepycat/b/i/e/ai;->e:Ljava/lang/String;

    .line 22346
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sleepycat/b/i/c/b/i;-><init>(Ljava/lang/String;)V

    throw v2

    .line 24682
    :cond_7
    iget v3, v0, Lcom/sleepycat/b/i/e/ai;->f:I

    .line 25226
    iget v4, v1, Lcom/sleepycat/b/i/c/am;->f:I

    .line 22354
    if-eq v3, v4, :cond_8

    .line 22355
    new-instance v2, Lcom/sleepycat/b/i/c/b/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Conflicting ports for replica id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/e/c;->d:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Feeder thinks it uses: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 26226
    iget v1, v1, Lcom/sleepycat/b/i/c/am;->f:I

    .line 22355
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Replica is configured to use: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 26682
    iget v0, v0, Lcom/sleepycat/b/i/e/ai;->f:I

    .line 22355
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sleepycat/b/i/c/b/i;-><init>(Ljava/lang/String;)V

    throw v2

    .line 22361
    :cond_8
    sget-object v3, Lcom/sleepycat/b/i/o;->b:Lcom/sleepycat/b/i/o;

    .line 27208
    iget-object v4, v1, Lcom/sleepycat/b/i/c/am;->b:Lcom/sleepycat/b/i/o;

    .line 22361
    if-eq v3, v4, :cond_9

    sget-object v3, Lcom/sleepycat/b/i/o;->a:Lcom/sleepycat/b/i/o;

    .line 28208
    iget-object v4, v1, Lcom/sleepycat/b/i/c/am;->b:Lcom/sleepycat/b/i/o;

    .line 22361
    if-eq v3, v4, :cond_9

    .line 22363
    new-instance v0, Lcom/sleepycat/b/i/c/b/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The replica node: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/e/c;->d:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 29208
    iget-object v1, v1, Lcom/sleepycat/b/i/c/am;->b:Lcom/sleepycat/b/i/o;

    .line 22363
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/i/c/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29685
    :cond_9
    iget-object v3, v0, Lcom/sleepycat/b/i/e/ai;->g:Lcom/sleepycat/b/i/o;

    .line 30208
    iget-object v4, v1, Lcom/sleepycat/b/i/c/am;->b:Lcom/sleepycat/b/i/o;

    .line 22368
    invoke-virtual {v3, v4}, Lcom/sleepycat/b/i/o;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 22369
    new-instance v2, Lcom/sleepycat/b/i/c/b/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Conflicting node types for: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/e/c;->d:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Feeder thinks it uses: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 31208
    iget-object v1, v1, Lcom/sleepycat/b/i/c/am;->b:Lcom/sleepycat/b/i/o;

    .line 22369
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Replica is configured as type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 31685
    iget-object v0, v0, Lcom/sleepycat/b/i/e/ai;->g:Lcom/sleepycat/b/i/o;

    .line 22369
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sleepycat/b/i/c/b/i;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Lcom/sleepycat/b/i/c/b/i; {:try_start_3 .. :try_end_3} :catch_0

    .line 286
    :cond_a
    iget-object v0, p0, Lcom/sleepycat/b/i/e/c;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 33190
    iget-object v1, v1, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 286
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/c/b/x;->a(Lcom/sleepycat/b/i/c/b/x;)V

    .line 287
    iget-object v0, p0, Lcom/sleepycat/b/i/e/c;->b:Lcom/sleepycat/b/i/h/o;

    iget-object v1, p0, Lcom/sleepycat/b/i/e/c;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 34040
    iput-object v1, v0, Lcom/sleepycat/b/i/h/o;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 288
    iget-object v0, p0, Lcom/sleepycat/b/i/e/c;->f:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/e/c;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 34520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Channel Mapping: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/e/c;->d:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/e/c;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/h/o;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 291
    new-instance v0, Lcom/sleepycat/b/i/e/aj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35304
    iget-object v1, v2, Lcom/sleepycat/b/i/c/t;->b:Ljava/util/UUID;

    .line 291
    iget-object v2, p0, Lcom/sleepycat/b/i/e/c;->d:Lcom/sleepycat/b/i/c/b/x;

    invoke-direct {v0, p1, v1, v2}, Lcom/sleepycat/b/i/e/aj;-><init>(Lcom/sleepycat/b/i/e/t;Ljava/util/UUID;Lcom/sleepycat/b/i/c/b/x;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/e/c;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 294
    return-void
.end method
