.class public final La/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic a:Lio/github/heyylucazzz/imnotadeveloper/app/SettingsActivity;


# direct methods
.method public constructor <init>(Lio/github/heyylucazzz/imnotadeveloper/app/SettingsActivity;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, La/c;->a:Lio/github/heyylucazzz/imnotadeveloper/app/SettingsActivity;

    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 9

    .line 1
    new-instance v0, La/b;

    .line 3
    const v1, 0x7f010003

    .line 6
    iget-object v2, p0, La/c;->a:Lio/github/heyylucazzz/imnotadeveloper/app/SettingsActivity;

    .line 8
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const-string v3, "getString(...)"

    .line 14
    invoke-static {v1, v3}, Lc/a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const-string v4, "hide_developer_mode"

    .line 19
    invoke-direct {v0, v1, v4}, La/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v1, La/b;

    .line 24
    const v4, 0x7f010004

    .line 27
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    invoke-static {v4, v3}, Lc/a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const-string v5, "hide_usb_debug"

    .line 36
    invoke-direct {v1, v4, v5}, La/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v4, La/b;

    .line 41
    const v5, 0x7f010005

    .line 44
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    move-result-object v5

    .line 48
    invoke-static {v5, v3}, Lc/a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    const-string v6, "hide_wireless_debug"

    .line 53
    invoke-direct {v4, v5, v6}, La/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v5, La/b;

    .line 58
    const v6, 0x7f010001

    .line 61
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    move-result-object v6

    .line 65
    invoke-static {v6, v3}, Lc/a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    const-string v7, "hide_debug_properties"

    .line 70
    invoke-direct {v5, v6, v7}, La/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v6, La/b;

    .line 75
    const v7, 0x7f010002

    .line 78
    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    invoke-static {v2, v3}, Lc/a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    const-string v3, "hide_debug_properties_in_native"

    .line 87
    invoke-direct {v6, v2, v3}, La/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v2, 0x5

    .line 91
    new-array v2, v2, [La/b;

    .line 93
    const/4 v3, 0x0

    .line 94
    aput-object v0, v2, v3

    .line 96
    const/4 v0, 0x1

    .line 97
    aput-object v1, v2, v0

    .line 99
    const/4 v0, 0x2

    .line 100
    aput-object v4, v2, v0

    .line 102
    const/4 v0, 0x3

    .line 103
    aput-object v5, v2, v0

    .line 105
    const/4 v0, 0x4

    .line 106
    aput-object v6, v2, v0

    .line 108
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 111
    move-result-object v0

    .line 112
    const-string v1, "asList(this)"

    .line 114
    invoke-static {v0, v1}, Lc/a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Ld/a;->a:Ld/b;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-class v0, La/c;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    aget-object v0, v0, v1

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "kotlin.jvm.functions."

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_20

    .line 27
    const/16 v1, 0x15

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    :cond_20
    const-string v1, "renderLambdaToString(this)"

    .line 35
    invoke-static {v0, v1}, Lc/a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    return-object v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, La/c;->b()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
