.class public final enum Lu/aly/ba;
.super Ljava/lang/Enum;
.source "IdJournal.java"

# interfaces
.implements Lu/aly/fg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/ba;",
        ">;",
        "Lu/aly/fg;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/ba;

.field public static final enum b:Lu/aly/ba;

.field public static final enum c:Lu/aly/ba;

.field public static final enum d:Lu/aly/ba;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/ba;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lu/aly/ba;


# instance fields
.field private final f:S

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 53
    new-instance v0, Lu/aly/ba;

    const-string v1, "DOMAIN"

    const-string v2, "domain"

    invoke-direct {v0, v1, v6, v3, v2}, Lu/aly/ba;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ba;->a:Lu/aly/ba;

    .line 54
    new-instance v0, Lu/aly/ba;

    const-string v1, "OLD_ID"

    const-string v2, "old_id"

    invoke-direct {v0, v1, v3, v4, v2}, Lu/aly/ba;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ba;->b:Lu/aly/ba;

    .line 55
    new-instance v0, Lu/aly/ba;

    const-string v1, "NEW_ID"

    const-string v2, "new_id"

    invoke-direct {v0, v1, v4, v5, v2}, Lu/aly/ba;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ba;->c:Lu/aly/ba;

    .line 56
    new-instance v0, Lu/aly/ba;

    const-string v1, "TS"

    const-string v2, "ts"

    invoke-direct {v0, v1, v5, v7, v2}, Lu/aly/ba;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ba;->d:Lu/aly/ba;

    new-array v0, v7, [Lu/aly/ba;

    sget-object v1, Lu/aly/ba;->a:Lu/aly/ba;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/ba;->b:Lu/aly/ba;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/ba;->c:Lu/aly/ba;

    aput-object v1, v0, v4

    sget-object v1, Lu/aly/ba;->d:Lu/aly/ba;

    aput-object v1, v0, v5

    sput-object v0, Lu/aly/ba;->h:[Lu/aly/ba;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ba;->e:Ljava/util/Map;

    .line 61
    const-class v0, Lu/aly/ba;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    return-void

    .line 61
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ba;

    .line 62
    sget-object v2, Lu/aly/ba;->e:Ljava/util/Map;

    .line 1114
    iget-object v3, v0, Lu/aly/ba;->g:Ljava/lang/String;

    .line 62
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput-short p3, p0, Lu/aly/ba;->f:S

    .line 106
    iput-object p4, p0, Lu/aly/ba;->g:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/ba;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lu/aly/ba;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/ba;

    return-object v0
.end method

.method public static values()[Lu/aly/ba;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lu/aly/ba;->h:[Lu/aly/ba;

    array-length v1, v0

    new-array v2, v1, [Lu/aly/ba;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()S
    .locals 1

    .prologue
    .line 110
    iget-short v0, p0, Lu/aly/ba;->f:S

    return v0
.end method
