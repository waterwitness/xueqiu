.class public final enum Lu/aly/bs;
.super Ljava/lang/Enum;
.source "Imprint.java"

# interfaces
.implements Lu/aly/fg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/bs;",
        ">;",
        "Lu/aly/fg;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/bs;

.field public static final enum b:Lu/aly/bs;

.field public static final enum c:Lu/aly/bs;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/bs;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lu/aly/bs;


# instance fields
.field private final e:S

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 51
    new-instance v0, Lu/aly/bs;

    const-string v1, "PROPERTY"

    const-string v2, "property"

    invoke-direct {v0, v1, v5, v3, v2}, Lu/aly/bs;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bs;->a:Lu/aly/bs;

    .line 52
    new-instance v0, Lu/aly/bs;

    const-string v1, "VERSION"

    const-string v2, "version"

    invoke-direct {v0, v1, v3, v4, v2}, Lu/aly/bs;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bs;->b:Lu/aly/bs;

    .line 53
    new-instance v0, Lu/aly/bs;

    const-string v1, "CHECKSUM"

    const-string v2, "checksum"

    invoke-direct {v0, v1, v4, v6, v2}, Lu/aly/bs;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bs;->c:Lu/aly/bs;

    new-array v0, v6, [Lu/aly/bs;

    sget-object v1, Lu/aly/bs;->a:Lu/aly/bs;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/bs;->b:Lu/aly/bs;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/bs;->c:Lu/aly/bs;

    aput-object v1, v0, v4

    sput-object v0, Lu/aly/bs;->g:[Lu/aly/bs;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bs;->d:Ljava/util/Map;

    .line 58
    const-class v0, Lu/aly/bs;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    return-void

    .line 58
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bs;

    .line 59
    sget-object v2, Lu/aly/bs;->d:Ljava/util/Map;

    .line 1109
    iget-object v3, v0, Lu/aly/bs;->f:Ljava/lang/String;

    .line 59
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput-short p3, p0, Lu/aly/bs;->e:S

    .line 101
    iput-object p4, p0, Lu/aly/bs;->f:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/bs;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lu/aly/bs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/bs;

    return-object v0
.end method

.method public static values()[Lu/aly/bs;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lu/aly/bs;->g:[Lu/aly/bs;

    array-length v1, v0

    new-array v2, v1, [Lu/aly/bs;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()S
    .locals 1

    .prologue
    .line 105
    iget-short v0, p0, Lu/aly/bs;->e:S

    return v0
.end method
