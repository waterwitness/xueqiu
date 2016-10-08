.class final Lcom/sleepycat/b/i/b/an;
.super Ljava/lang/Object;
.source "TimebasedProposalGenerator.java"

# interfaces
.implements Lcom/sleepycat/b/i/b/s;


# static fields
.field static final synthetic a:Z

.field private static c:Lcom/sleepycat/b/i/b/t;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    const-class v0, Lcom/sleepycat/b/i/b/am;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/b/an;->a:Z

    .line 177
    new-instance v0, Lcom/sleepycat/b/i/b/an$1;

    invoke-direct {v0}, Lcom/sleepycat/b/i/b/an$1;-><init>()V

    sput-object v0, Lcom/sleepycat/b/i/b/an;->c:Lcom/sleepycat/b/i/b/t;

    return-void

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    sget-boolean v0, Lcom/sleepycat/b/i/b/an;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 188
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/b/i/b/an;->b:Ljava/lang/String;

    .line 189
    return-void
.end method

.method static synthetic b()Lcom/sleepycat/b/i/b/t;
    .locals 1

    .prologue
    .line 1213
    sget-object v0, Lcom/sleepycat/b/i/b/an;->c:Lcom/sleepycat/b/i/b/t;

    .line 173
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sleepycat/b/i/b/an;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 173
    check-cast p1, Lcom/sleepycat/b/i/b/s;

    .line 1198
    iget-object v0, p0, Lcom/sleepycat/b/i/b/an;->b:Ljava/lang/String;

    check-cast p1, Lcom/sleepycat/b/i/b/an;

    iget-object v1, p1, Lcom/sleepycat/b/i/b/an;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 173
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 223
    if-ne p0, p1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 227
    goto :goto_0

    .line 229
    :cond_2
    instance-of v2, p1, Lcom/sleepycat/b/i/b/an;

    if-nez v2, :cond_3

    move v0, v1

    .line 230
    goto :goto_0

    .line 232
    :cond_3
    check-cast p1, Lcom/sleepycat/b/i/b/an;

    .line 233
    iget-object v2, p0, Lcom/sleepycat/b/i/b/an;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 234
    iget-object v2, p1, Lcom/sleepycat/b/i/b/an;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 235
    goto :goto_0

    .line 237
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/b/i/b/an;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/sleepycat/b/i/b/an;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 238
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sleepycat/b/i/b/an;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/b/an;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x30

    const/16 v3, 0x10

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Proposal("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/b/an;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/b/an;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/b/an;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
