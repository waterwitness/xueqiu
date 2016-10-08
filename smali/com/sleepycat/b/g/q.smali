.class public final enum Lcom/sleepycat/b/g/q;
.super Ljava/lang/Enum;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/g/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/g/q;

.field public static final enum b:Lcom/sleepycat/b/g/q;

.field public static final enum c:Lcom/sleepycat/b/g/q;

.field public static final enum d:Lcom/sleepycat/b/g/q;

.field private static final synthetic g:[Lcom/sleepycat/b/g/q;


# instance fields
.field e:Ljava/lang/String;

.field f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 79
    new-instance v0, Lcom/sleepycat/b/g/q;

    const-string v1, "READ_MODE"

    const-string v2, "r"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/sleepycat/b/g/q;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sleepycat/b/g/q;->a:Lcom/sleepycat/b/g/q;

    .line 80
    new-instance v0, Lcom/sleepycat/b/g/q;

    const-string v1, "READWRITE_MODE"

    const-string v2, "rw"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/sleepycat/b/g/q;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sleepycat/b/g/q;->b:Lcom/sleepycat/b/g/q;

    .line 81
    new-instance v0, Lcom/sleepycat/b/g/q;

    const-string v1, "READWRITE_ODSYNC_MODE"

    const-string v2, "rwd"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sleepycat/b/g/q;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sleepycat/b/g/q;->c:Lcom/sleepycat/b/g/q;

    .line 82
    new-instance v0, Lcom/sleepycat/b/g/q;

    const-string v1, "READWRITE_OSYNC_MODE"

    const-string v2, "rws"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sleepycat/b/g/q;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sleepycat/b/g/q;->d:Lcom/sleepycat/b/g/q;

    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sleepycat/b/g/q;

    sget-object v1, Lcom/sleepycat/b/g/q;->a:Lcom/sleepycat/b/g/q;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/b/g/q;->b:Lcom/sleepycat/b/g/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/g/q;->c:Lcom/sleepycat/b/g/q;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/b/g/q;->d:Lcom/sleepycat/b/g/q;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sleepycat/b/g/q;->g:[Lcom/sleepycat/b/g/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput-object p3, p0, Lcom/sleepycat/b/g/q;->e:Ljava/lang/String;

    .line 89
    iput-boolean p4, p0, Lcom/sleepycat/b/g/q;->f:Z

    .line 90
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/g/q;
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/sleepycat/b/g/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/q;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/g/q;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/sleepycat/b/g/q;->g:[Lcom/sleepycat/b/g/q;

    invoke-virtual {v0}, [Lcom/sleepycat/b/g/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/g/q;

    return-object v0
.end method
