.class public Lcom/sleepycat/b/aa;
.super Lcom/sleepycat/b/bd;
.source "EnvironmentFailureException.java"


# static fields
.field static final synthetic b:Z


# instance fields
.field public a:Z

.field private c:Lcom/sleepycat/b/c/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const-class v0, Lcom/sleepycat/b/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/aa;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 183
    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1196
    if-eqz p1, :cond_0

    .line 1197
    invoke-virtual {p1}, Lcom/sleepycat/b/c/ad;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    :cond_0
    if-eqz p3, :cond_2

    .line 1201
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1207
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/sleepycat/b/aa;->b:Z

    if-nez v1, :cond_3

    if-nez p2, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1203
    :cond_2
    if-eqz p4, :cond_1

    .line 1204
    invoke-virtual {p4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1208
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2134
    iget-boolean v1, p2, Lcom/sleepycat/b/c/ac;->E:Z

    .line 1216
    if-nez v1, :cond_4

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/sleepycat/b/c/ad;->j()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1218
    :cond_4
    const-string v1, " Environment is invalid and must be closed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-direct {p0, v0, p4}, Lcom/sleepycat/b/bd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3134
    iget-boolean v0, p2, Lcom/sleepycat/b/c/ac;->E:Z

    .line 184
    if-eqz v0, :cond_7

    .line 185
    sget-boolean v0, Lcom/sleepycat/b/aa;->b:Z

    if-nez v0, :cond_6

    if-nez p1, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 186
    :cond_6
    invoke-virtual {p1, p0}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/aa;)V

    .line 188
    :cond_7
    iput-object p2, p0, Lcom/sleepycat/b/aa;->c:Lcom/sleepycat/b/c/ac;

    .line 189
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sleepycat/b/bd;-><init>(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/aa;)V
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/bd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    sget-boolean v0, Lcom/sleepycat/b/aa;->b:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 232
    :cond_0
    iget-object v0, p2, Lcom/sleepycat/b/aa;->c:Lcom/sleepycat/b/c/ac;

    iput-object v0, p0, Lcom/sleepycat/b/aa;->c:Lcom/sleepycat/b/c/ac;

    .line 233
    return-void
.end method

.method public static a()Lcom/sleepycat/b/aa;
    .locals 2

    .prologue
    .line 291
    new-instance v0, Lcom/sleepycat/b/aa;

    sget-object v1, Lcom/sleepycat/b/c/ac;->f:Lcom/sleepycat/b/c/ac;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/ac;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/aa;-><init>(Ljava/lang/String;)V

    .line 293
    sget-object v1, Lcom/sleepycat/b/c/ac;->f:Lcom/sleepycat/b/c/ac;

    iput-object v1, v0, Lcom/sleepycat/b/aa;->c:Lcom/sleepycat/b/c/ac;

    .line 294
    return-object v0
.end method

.method public static a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/aa;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 412
    new-instance v0, Lcom/sleepycat/b/aa;

    sget-object v1, Lcom/sleepycat/b/c/ac;->C:Lcom/sleepycat/b/c/ac;

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/sleepycat/b/aa;
    .locals 1

    .prologue
    .line 315
    instance-of v0, p3, Lcom/sleepycat/b/aa;

    if-eqz v0, :cond_0

    .line 316
    check-cast p3, Lcom/sleepycat/b/aa;

    .line 318
    invoke-virtual {p3, p2}, Lcom/sleepycat/b/aa;->a(Ljava/lang/String;)V

    .line 322
    :goto_0
    return-object p3

    :cond_0
    new-instance v0, Lcom/sleepycat/b/aa;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p3, v0

    goto :goto_0
.end method

.method public static a(Lcom/sleepycat/b/c/ad;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;
    .locals 3

    .prologue
    .line 351
    new-instance v0, Lcom/sleepycat/b/aa;

    sget-object v1, Lcom/sleepycat/b/c/ac;->A:Lcom/sleepycat/b/c/ac;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;
    .locals 3

    .prologue
    .line 441
    new-instance v0, Lcom/sleepycat/b/aa;

    sget-object v1, Lcom/sleepycat/b/c/ac;->C:Lcom/sleepycat/b/c/ac;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;
    .locals 2

    .prologue
    .line 383
    new-instance v0, Lcom/sleepycat/b/aa;

    sget-object v1, Lcom/sleepycat/b/c/ac;->A:Lcom/sleepycat/b/c/ac;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;
    .locals 3

    .prologue
    .line 336
    new-instance v0, Lcom/sleepycat/b/aa;

    sget-object v1, Lcom/sleepycat/b/c/ac;->z:Lcom/sleepycat/b/c/ac;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;
    .locals 2

    .prologue
    .line 366
    new-instance v0, Lcom/sleepycat/b/aa;

    sget-object v1, Lcom/sleepycat/b/c/ac;->z:Lcom/sleepycat/b/c/ac;

    invoke-direct {v0, v1, p0, p1}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 459
    if-nez p0, :cond_0

    .line 460
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 462
    :cond_0
    return-void
.end method

.method public static b()Lcom/sleepycat/b/aa;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 397
    new-instance v0, Lcom/sleepycat/b/aa;

    sget-object v1, Lcom/sleepycat/b/c/ac;->B:Lcom/sleepycat/b/c/ac;

    invoke-direct {v0, v1, v2, v2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    .locals 3

    .prologue
    .line 426
    new-instance v0, Lcom/sleepycat/b/aa;

    sget-object v1, Lcom/sleepycat/b/c/ac;->B:Lcom/sleepycat/b/c/ac;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    .locals 3

    .prologue
    .line 244
    sget-boolean v0, Lcom/sleepycat/b/aa;->b:Z

    if-nez v0, :cond_0

    const-class v0, Lcom/sleepycat/b/aa;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing overriding "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".wrapSelf() method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 246
    :cond_0
    new-instance v0, Lcom/sleepycat/b/aa;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/aa;-><init>(Ljava/lang/String;Lcom/sleepycat/b/aa;)V

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sleepycat/b/aa;->c:Lcom/sleepycat/b/c/ac;

    sget-object v1, Lcom/sleepycat/b/c/ac;->f:Lcom/sleepycat/b/c/ac;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/b/aa;->a:Z

    if-nez v0, :cond_1

    .line 269
    :cond_0
    invoke-super {p0}, Lcom/sleepycat/b/bd;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Environment invalid because of previous exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/sleepycat/b/bd;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
