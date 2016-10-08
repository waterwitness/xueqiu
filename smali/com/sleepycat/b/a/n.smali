.class final enum Lcom/sleepycat/b/a/n;
.super Ljava/lang/Enum;
.source "FileSelector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/a/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/a/n;

.field public static final enum b:Lcom/sleepycat/b/a/n;

.field public static final enum c:Lcom/sleepycat/b/a/n;

.field public static final enum d:Lcom/sleepycat/b/a/n;

.field public static final enum e:Lcom/sleepycat/b/a/n;

.field public static final enum f:Lcom/sleepycat/b/a/n;

.field private static final synthetic g:[Lcom/sleepycat/b/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/sleepycat/b/a/n;

    const-string v1, "TO_BE_CLEANED"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/a/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/a/n;->a:Lcom/sleepycat/b/a/n;

    .line 62
    new-instance v0, Lcom/sleepycat/b/a/n;

    const-string v1, "BEING_CLEANED"

    invoke-direct {v0, v1, v4}, Lcom/sleepycat/b/a/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/a/n;->b:Lcom/sleepycat/b/a/n;

    .line 71
    new-instance v0, Lcom/sleepycat/b/a/n;

    const-string v1, "CLEANED"

    invoke-direct {v0, v1, v5}, Lcom/sleepycat/b/a/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/a/n;->c:Lcom/sleepycat/b/a/n;

    .line 81
    new-instance v0, Lcom/sleepycat/b/a/n;

    const-string v1, "CHECKPOINTED"

    invoke-direct {v0, v1, v6}, Lcom/sleepycat/b/a/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/a/n;->d:Lcom/sleepycat/b/a/n;

    .line 99
    new-instance v0, Lcom/sleepycat/b/a/n;

    const-string v1, "FULLY_PROCESSED"

    invoke-direct {v0, v1, v7}, Lcom/sleepycat/b/a/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/a/n;->e:Lcom/sleepycat/b/a/n;

    .line 107
    new-instance v0, Lcom/sleepycat/b/a/n;

    const-string v1, "SAFE_TO_DELETE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/a/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/a/n;->f:Lcom/sleepycat/b/a/n;

    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sleepycat/b/a/n;

    sget-object v1, Lcom/sleepycat/b/a/n;->a:Lcom/sleepycat/b/a/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/a/n;->b:Lcom/sleepycat/b/a/n;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/b/a/n;->c:Lcom/sleepycat/b/a/n;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/b/a/n;->d:Lcom/sleepycat/b/a/n;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sleepycat/b/a/n;->e:Lcom/sleepycat/b/a/n;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sleepycat/b/a/n;->f:Lcom/sleepycat/b/a/n;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sleepycat/b/a/n;->g:[Lcom/sleepycat/b/a/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/a/n;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/sleepycat/b/a/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/n;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/a/n;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sleepycat/b/a/n;->g:[Lcom/sleepycat/b/a/n;

    invoke-virtual {v0}, [Lcom/sleepycat/b/a/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/a/n;

    return-object v0
.end method
