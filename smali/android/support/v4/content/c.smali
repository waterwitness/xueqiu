.class public final Landroid/support/v4/content/c;
.super Ljava/lang/Object;
.source "ContentResolverCompat.java"


# static fields
.field private static final a:Landroid/support/v4/content/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 77
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 78
    new-instance v0, Landroid/support/v4/content/f;

    invoke-direct {v0}, Landroid/support/v4/content/f;-><init>()V

    sput-object v0, Landroid/support/v4/content/c;->a:Landroid/support/v4/content/d;

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v0, Landroid/support/v4/content/e;

    invoke-direct {v0}, Landroid/support/v4/content/e;-><init>()V

    sput-object v0, Landroid/support/v4/content/c;->a:Landroid/support/v4/content/d;

    goto :goto_0
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/d/a;)Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 125
    sget-object v0, Landroid/support/v4/content/c;->a:Landroid/support/v4/content/d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/support/v4/content/d;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/d/a;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
