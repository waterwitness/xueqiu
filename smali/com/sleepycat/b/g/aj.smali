.class public final enum Lcom/sleepycat/b/g/aj;
.super Ljava/lang/Enum;
.source "LogEntryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/g/aj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/g/aj;

.field public static final enum b:Lcom/sleepycat/b/g/aj;

.field private static final synthetic d:[Lcom/sleepycat/b/g/aj;


# instance fields
.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 698
    new-instance v0, Lcom/sleepycat/b/g/aj;

    const-string v1, "TXNAL"

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/g/aj;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sleepycat/b/g/aj;->a:Lcom/sleepycat/b/g/aj;

    .line 699
    new-instance v0, Lcom/sleepycat/b/g/aj;

    const-string v1, "NON_TXNAL"

    invoke-direct {v0, v1, v3, v2}, Lcom/sleepycat/b/g/aj;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    .line 697
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sleepycat/b/g/aj;

    sget-object v1, Lcom/sleepycat/b/g/aj;->a:Lcom/sleepycat/b/g/aj;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sleepycat/b/g/aj;->d:[Lcom/sleepycat/b/g/aj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 703
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 704
    iput-boolean p3, p0, Lcom/sleepycat/b/g/aj;->c:Z

    .line 705
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/g/aj;
    .locals 1

    .prologue
    .line 697
    const-class v0, Lcom/sleepycat/b/g/aj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/aj;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/g/aj;
    .locals 1

    .prologue
    .line 697
    sget-object v0, Lcom/sleepycat/b/g/aj;->d:[Lcom/sleepycat/b/g/aj;

    invoke-virtual {v0}, [Lcom/sleepycat/b/g/aj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/g/aj;

    return-object v0
.end method
