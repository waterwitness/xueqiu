.class public final enum Lcom/sleepycat/b/i/u;
.super Ljava/lang/Enum;
.source "ReplicatedEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/i/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/i/u;

.field public static final enum b:Lcom/sleepycat/b/i/u;

.field public static final enum c:Lcom/sleepycat/b/i/u;

.field public static final enum d:Lcom/sleepycat/b/i/u;

.field private static final synthetic e:[Lcom/sleepycat/b/i/u;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 943
    new-instance v0, Lcom/sleepycat/b/i/u;

    const-string v1, "DETACHED"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/u;->a:Lcom/sleepycat/b/i/u;

    .line 952
    new-instance v0, Lcom/sleepycat/b/i/u;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/i/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/u;->b:Lcom/sleepycat/b/i/u;

    .line 961
    new-instance v0, Lcom/sleepycat/b/i/u;

    const-string v1, "MASTER"

    invoke-direct {v0, v1, v4}, Lcom/sleepycat/b/i/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/u;->c:Lcom/sleepycat/b/i/u;

    .line 971
    new-instance v0, Lcom/sleepycat/b/i/u;

    const-string v1, "REPLICA"

    invoke-direct {v0, v1, v5}, Lcom/sleepycat/b/i/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/i/u;->d:Lcom/sleepycat/b/i/u;

    .line 936
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sleepycat/b/i/u;

    sget-object v1, Lcom/sleepycat/b/i/u;->a:Lcom/sleepycat/b/i/u;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sleepycat/b/i/u;->b:Lcom/sleepycat/b/i/u;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/i/u;->c:Lcom/sleepycat/b/i/u;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/b/i/u;->d:Lcom/sleepycat/b/i/u;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sleepycat/b/i/u;->e:[Lcom/sleepycat/b/i/u;

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
    .line 936
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/i/u;
    .locals 1

    .prologue
    .line 936
    const-class v0, Lcom/sleepycat/b/i/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/u;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/i/u;
    .locals 1

    .prologue
    .line 936
    sget-object v0, Lcom/sleepycat/b/i/u;->e:[Lcom/sleepycat/b/i/u;

    invoke-virtual {v0}, [Lcom/sleepycat/b/i/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/i/u;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 977
    sget-object v0, Lcom/sleepycat/b/i/u;->c:Lcom/sleepycat/b/i/u;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 984
    sget-object v0, Lcom/sleepycat/b/i/u;->d:Lcom/sleepycat/b/i/u;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 992
    sget-object v0, Lcom/sleepycat/b/i/u;->a:Lcom/sleepycat/b/i/u;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
