.class public final enum Lcom/sleepycat/b/g/ai;
.super Ljava/lang/Enum;
.source "LogEntryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/g/ai;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/g/ai;

.field public static final enum b:Lcom/sleepycat/b/g/ai;

.field public static final enum c:Lcom/sleepycat/b/g/ai;

.field private static final synthetic f:[Lcom/sleepycat/b/g/ai;


# instance fields
.field public final d:Z

.field final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 764
    new-instance v0, Lcom/sleepycat/b/g/ai;

    const-string v1, "REPLICABLE_MATCH"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sleepycat/b/g/ai;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sleepycat/b/g/ai;->a:Lcom/sleepycat/b/g/ai;

    .line 765
    new-instance v0, Lcom/sleepycat/b/g/ai;

    const-string v1, "REPLICABLE_NO_MATCH"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/sleepycat/b/g/ai;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sleepycat/b/g/ai;->b:Lcom/sleepycat/b/g/ai;

    .line 766
    new-instance v0, Lcom/sleepycat/b/g/ai;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v4, v2, v2}, Lcom/sleepycat/b/g/ai;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/sleepycat/b/g/ai;->c:Lcom/sleepycat/b/g/ai;

    .line 763
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sleepycat/b/g/ai;

    sget-object v1, Lcom/sleepycat/b/g/ai;->a:Lcom/sleepycat/b/g/ai;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/g/ai;->b:Lcom/sleepycat/b/g/ai;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/g/ai;->c:Lcom/sleepycat/b/g/ai;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sleepycat/b/g/ai;->f:[Lcom/sleepycat/b/g/ai;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .prologue
    .line 771
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 772
    iput-boolean p3, p0, Lcom/sleepycat/b/g/ai;->d:Z

    .line 773
    iput-boolean p4, p0, Lcom/sleepycat/b/g/ai;->e:Z

    .line 774
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/g/ai;
    .locals 1

    .prologue
    .line 763
    const-class v0, Lcom/sleepycat/b/g/ai;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/ai;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/g/ai;
    .locals 1

    .prologue
    .line 763
    sget-object v0, Lcom/sleepycat/b/g/ai;->f:[Lcom/sleepycat/b/g/ai;

    invoke-virtual {v0}, [Lcom/sleepycat/b/g/ai;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/g/ai;

    return-object v0
.end method
