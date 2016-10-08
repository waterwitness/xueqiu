.class public final Lcom/sleepycat/b/i/d;
.super Lcom/sleepycat/b/aa;
.source "GroupShutdownException.java"


# instance fields
.field private final c:J

.field private final d:Ljava/lang/String;

.field private final e:Lcom/sleepycat/b/p/au;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/i/d;)V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/aa;-><init>(Ljava/lang/String;Lcom/sleepycat/b/aa;)V

    .line 65
    iget-object v0, p2, Lcom/sleepycat/b/i/d;->e:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/d;->e:Lcom/sleepycat/b/p/au;

    .line 66
    iget-wide v0, p2, Lcom/sleepycat/b/i/d;->c:J

    iput-wide v0, p0, Lcom/sleepycat/b/i/d;->c:J

    .line 67
    iget-object v0, p2, Lcom/sleepycat/b/i/d;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/sleepycat/b/i/d;->d:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Logger;Lcom/sleepycat/b/i/c/b/aa;J)V
    .locals 7

    .prologue
    .line 41
    .line 1520
    iget-object v0, p2, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 41
    sget-object v1, Lcom/sleepycat/b/c/ac;->v:Lcom/sleepycat/b/c/ac;

    const-string v2, "Master:%s, initiated shutdown at %1tc."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 2462
    iget-object v5, p2, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    .line 41
    invoke-virtual {v5}, Lcom/sleepycat/b/i/e/n;->h()Lcom/sleepycat/b/i/c/b/x;

    move-result-object v5

    .line 3087
    iget-object v5, v5, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 41
    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    .line 3532
    iget-object v0, p2, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 3807
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 4775
    iget-object v0, v0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v0

    .line 5114
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 48
    iput-object v0, p0, Lcom/sleepycat/b/i/d;->e:Lcom/sleepycat/b/p/au;

    .line 5462
    iget-object v0, p2, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    .line 49
    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->h()Lcom/sleepycat/b/i/c/b/x;

    move-result-object v0

    .line 6087
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/sleepycat/b/i/d;->d:Ljava/lang/String;

    .line 51
    iput-wide p3, p0, Lcom/sleepycat/b/i/d;->c:J

    .line 6520
    iget-object v0, p2, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Explicit shutdown request from Master:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sleepycat/b/i/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    .locals 1

    .prologue
    .line 22
    .line 7076
    new-instance v0, Lcom/sleepycat/b/i/d;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/i/d;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/d;)V

    .line 22
    return-object v0
.end method
