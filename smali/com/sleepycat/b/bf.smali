.class public final Lcom/sleepycat/b/bf;
.super Lcom/sleepycat/b/l;
.source "SecondaryConfig.java"


# static fields
.field public static final x:Lcom/sleepycat/b/bf;


# instance fields
.field A:Lcom/sleepycat/b/bl;

.field B:Lcom/sleepycat/b/i;

.field C:Lcom/sleepycat/b/ai;

.field D:Lcom/sleepycat/b/aj;

.field E:Lcom/sleepycat/b/ak;

.field F:Z

.field G:Z

.field y:Z

.field z:Lcom/sleepycat/b/bk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/sleepycat/b/bf;

    invoke-direct {v0}, Lcom/sleepycat/b/bf;-><init>()V

    sput-object v0, Lcom/sleepycat/b/bf;->x:Lcom/sleepycat/b/bf;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sleepycat/b/l;-><init>()V

    .line 51
    sget-object v0, Lcom/sleepycat/b/ai;->a:Lcom/sleepycat/b/ai;

    iput-object v0, p0, Lcom/sleepycat/b/bf;->C:Lcom/sleepycat/b/ai;

    .line 62
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/sleepycat/b/l;
    .locals 1

    .prologue
    .line 39
    .line 1519
    invoke-super {p0}, Lcom/sleepycat/b/l;->a()Lcom/sleepycat/b/l;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/bf;

    .line 39
    return-object v0
.end method

.method public final a(Ljava/util/List;)Lcom/sleepycat/b/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/m/d;",
            ">;)",
            "Lcom/sleepycat/b/l;"
        }
    .end annotation

    .prologue
    .line 579
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 580
    :cond_0
    return-object p0

    .line 583
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Triggers may only be associated with a Primary database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    .line 2519
    invoke-super {p0}, Lcom/sleepycat/b/l;->a()Lcom/sleepycat/b/l;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/bf;

    .line 39
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "keyCreator="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/bf;->z:Lcom/sleepycat/b/bk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmultiKeyCreator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/bf;->A:Lcom/sleepycat/b/bl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nallowPopulate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/bf;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nforeignKeyDatabase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/bf;->B:Lcom/sleepycat/b/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nforeignKeyDeleteAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/bf;->C:Lcom/sleepycat/b/ai;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nforeignKeyNullifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/bf;->D:Lcom/sleepycat/b/aj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nforeignMultiKeyNullifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/bf;->E:Lcom/sleepycat/b/ak;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nimmutableSecondaryKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/bf;->G:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
